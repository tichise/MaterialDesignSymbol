//
//  MaterialDesignFont.swift
//  MaterialDesignSymbol
//
//  Created by tichise on 2015/5/7.
//  Copyright (c) 2015 tichise. All rights reserved.
//

#if canImport(UIKit)
import UIKit
public typealias MDSFont = UIFont
#elseif canImport(AppKit)
import AppKit
public typealias MDSFont = NSFont
#endif

import CoreGraphics
import CoreText
import Foundation

/// Material Design Icons font manager
public final class MaterialDesignFont: @unchecked Sendable {

    /// Shared singleton instance
    public static let shared = MaterialDesignFont()

    /// Font file name (without extension)
    private let fontName = "material-design-icons"

    /// Thread-safe font registration state
    private static var isRegistered = false
    private static let lock = NSLock()

    private init() {
        registerFontIfNeeded()
    }

    // MARK: - Public API

    /// Get Material Design Icons font with specified size
    /// - Parameter fontSize: The desired font size
    /// - Returns: The font, or nil if font loading failed
    public func fontOfSize(_ fontSize: CGFloat) -> MDSFont? {
        registerFontIfNeeded()
        return MDSFont(name: fontName, size: fontSize)
    }

    /// Static convenience method for getting font
    /// - Parameter fontSize: The desired font size
    /// - Returns: The font, or nil if font loading failed
    public static func fontOfSize(_ fontSize: CGFloat) -> MDSFont? {
        shared.fontOfSize(fontSize)
    }

    // MARK: - Private Methods

    private func registerFontIfNeeded() {
        Self.lock.lock()
        defer { Self.lock.unlock() }

        guard !Self.isRegistered else { return }

        if isFontAlreadyAvailable() {
            Self.isRegistered = true
            return
        }

        do {
            try loadFont()
            Self.isRegistered = true
        } catch {
            print("[MaterialDesignSymbol] Font loading error: \(error)")
        }
    }

    private func isFontAlreadyAvailable() -> Bool {
        #if canImport(UIKit)
        return !MDSFont.fontNames(forFamilyName: fontName).isEmpty
        #elseif canImport(AppKit)
        return NSFontManager.shared.availableFonts.contains(fontName)
        #endif
    }

    private func loadFont() throws {
        #if SWIFT_PACKAGE
        guard let fontURL = Bundle.module.url(forResource: fontName, withExtension: "ttf") else {
            throw FontError.invalidFontFile
        }
        try registerFont(from: fontURL)
        #else
        guard let bundle = Bundle(identifier: "org.cocoapods.MaterialDesignSymbol") ??
              Bundle(for: type(of: self) as AnyClass) as Bundle?,
              let fontURL = bundle.url(forResource: fontName, withExtension: "ttf") else {
            throw FontError.invalidFontFile
        }
        try registerFont(from: fontURL)
        #endif
    }

    private func registerFont(from url: URL) throws {
        var error: Unmanaged<CFError>?
        guard CTFontManagerRegisterFontsForURL(url as CFURL, .process, &error) else {
            if let cfError = error?.takeRetainedValue() {
                let nsError = cfError as Error
                // Ignore "already registered" errors
                if (nsError as NSError).code == CTFontManagerError.alreadyRegistered.rawValue {
                    return
                }
                throw FontError.registerFailed(underlying: nsError)
            }
            throw FontError.registerFailed(underlying: nil)
        }
    }
}

// MARK: - Font Error

/// Errors that can occur during font loading
public enum FontError: Error, Sendable {
    case invalidFontFile
    case fontPathNotFound
    case initFontError
    case registerFailed(underlying: Error?)

    public var localizedDescription: String {
        switch self {
        case .invalidFontFile:
            return "Font file not found or invalid"
        case .fontPathNotFound:
            return "Font path not found"
        case .initFontError:
            return "Failed to initialize font"
        case .registerFailed(let underlying):
            if let error = underlying {
                return "Font registration failed: \(error.localizedDescription)"
            }
            return "Font registration failed"
        }
    }
}
