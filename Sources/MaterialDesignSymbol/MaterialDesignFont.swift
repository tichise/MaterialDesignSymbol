//
//  MaterialDesignFont
//
//  Created by tichise on 2015/5/7 15/05/07.
//  Copyright (c) 2015 tichise. All rights reserved.
//

#if canImport(UIKit)
import UIKit
import CoreText

/// Provides access to Material Design icon font
public struct MaterialDesignFont: Sendable {

    /// Shared instance
    public static let shared = MaterialDesignFont()

    /// Font family name
    private static let fontName = "material-design-icons"

    private init() {
        Self.registerFontIfNeeded()
    }

    /// Register the font from the bundle (for SPM)
    private static func registerFontIfNeeded() {
        #if SWIFT_PACKAGE
        guard let fontURL = Bundle.module.url(forResource: fontName, withExtension: "ttf") else {
            assertionFailure("Font file '\(fontName).ttf' not found in bundle")
            return
        }

        var error: Unmanaged<CFError>?
        let success = CTFontManagerRegisterFontsForURL(fontURL as CFURL, .process, &error)

        if !success, let cfError = error?.takeRetainedValue() {
            let nsError = cfError as Error
            // Ignore "already registered" errors
            if (nsError as NSError).code != CTFontManagerError.alreadyRegistered.rawValue {
                assertionFailure("Failed to register font: \(nsError.localizedDescription)")
            }
        }
        #endif
    }

    /// Get the Material Design icon font at the specified size
    /// - Parameter fontSize: The desired font size
    /// - Returns: The UIFont instance
    public func fontOfSize(_ fontSize: CGFloat) -> UIFont {
        // Check if font is already available
        if UIFont.fontNames(forFamilyName: Self.fontName).isEmpty {
            do {
                try FontLoader.loadFont(Self.fontName)
            } catch {
                assertionFailure("Failed to load font: \(error)")
            }
        }

        guard let font = UIFont(name: Self.fontName, size: fontSize) else {
            assertionFailure("Could not create font '\(Self.fontName)' at size \(fontSize)")
            return UIFont.systemFont(ofSize: fontSize)
        }

        return font
    }

    /// Static method to get the font at the specified size
    /// - Parameter fontSize: The desired font size
    /// - Returns: The UIFont instance
    public static func fontOfSize(_ fontSize: CGFloat) -> UIFont {
        shared.fontOfSize(fontSize)
    }
}
#endif
