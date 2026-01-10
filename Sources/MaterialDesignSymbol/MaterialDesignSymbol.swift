//
//  MaterialDesignSymbol.swift
//  MaterialDesignSymbol
//
//  Created by tichise on 2015/5/7.
//  Copyright (c) 2015 tichise. All rights reserved.
//

#if canImport(UIKit)
import UIKit
public typealias MDSColor = UIColor
public typealias MDSImage = UIImage
#elseif canImport(AppKit)
import AppKit
public typealias MDSColor = NSColor
public typealias MDSImage = NSImage
#endif

import CoreGraphics

/// Main class for creating Material Design icon images
public final class MaterialDesignSymbol {

    // MARK: - Properties

    private let text: String
    private let fontSize: CGFloat
    private var textAttributes: [NSAttributedString.Key: Any]

    // MARK: - Initialization

    /// Initialize with an icon enum
    /// - Parameters:
    ///   - icon: The Material Design icon to display
    ///   - size: Font size for the icon
    public init(icon: MaterialDesignIconEnum, size: CGFloat) {
        self.text = icon.rawValue
        self.fontSize = size
        self.textAttributes = Self.makeDefaultAttributes(size: size)
    }

    /// Initialize with a text string (Unicode character)
    /// - Parameters:
    ///   - text: The Unicode string for the icon
    ///   - size: Font size for the icon
    public init(text: String, size: CGFloat) {
        self.text = text
        self.fontSize = size
        self.textAttributes = Self.makeDefaultAttributes(size: size)
    }

    // MARK: - Attribute Configuration

    /// Add a custom attribute
    /// - Parameters:
    ///   - attributeName: The attribute key
    ///   - value: The attribute value
    public func addAttribute(attributeName: NSAttributedString.Key, value: Any) {
        textAttributes[attributeName] = value
    }

    /// Set the foreground color
    /// - Parameter foregroundColor: The color to apply
    public func addAttribute(foregroundColor: MDSColor) {
        addAttribute(attributeName: .foregroundColor, value: foregroundColor)
    }

    // MARK: - Image Generation

    /// Generate an image with the specified size
    /// - Parameter size: The desired image size
    /// - Returns: The generated image, or nil if generation failed
    public func image(size: CGSize) -> MDSImage? {
        #if canImport(UIKit)
        return renderUIKitImage(size: size)
        #elseif canImport(AppKit)
        return renderAppKitImage(size: size)
        #endif
    }

    /// Generate an image using the font size as dimensions
    /// - Returns: The generated image, or nil if generation failed
    public func image() -> MDSImage? {
        let size = CGSize(width: fontSize, height: fontSize)
        return image(size: size)
    }

    // MARK: - Private Methods

    private static func makeDefaultAttributes(size: CGFloat) -> [NSAttributedString.Key: Any] {
        var attributes: [NSAttributedString.Key: Any] = [:]

        if let paragraphStyle = NSMutableParagraphStyle.default.mutableCopy() as? NSMutableParagraphStyle {
            attributes[.paragraphStyle] = paragraphStyle
        }

        if let font = MaterialDesignFont.shared.fontOfSize(size) {
            attributes[.font] = font
        }

        return attributes
    }

    #if canImport(UIKit)
    private func renderUIKitImage(size: CGSize) -> UIImage? {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 0 // Use screen scale

        let renderer = UIGraphicsImageRenderer(size: size, format: format)
        return renderer.image { _ in
            let rect = CGRect(origin: .zero, size: size)
            text.draw(in: rect, withAttributes: textAttributes)
        }
    }
    #endif

    #if canImport(AppKit)
    private func renderAppKitImage(size: CGSize) -> NSImage? {
        let image = NSImage(size: size)
        image.lockFocus()

        let rect = CGRect(origin: .zero, size: size)
        text.draw(in: rect, withAttributes: textAttributes)

        image.unlockFocus()
        return image
    }
    #endif
}

// MARK: - Convenience Extensions

public extension MaterialDesignSymbol {
    /// Create and return an image in one call
    /// - Parameters:
    ///   - icon: The Material Design icon
    ///   - size: The image size
    ///   - color: Optional foreground color
    /// - Returns: The generated image, or nil if generation failed
    static func image(
        icon: MaterialDesignIconEnum,
        size: CGSize,
        color: MDSColor? = nil
    ) -> MDSImage? {
        let symbol = MaterialDesignSymbol(icon: icon, size: size.height)
        if let color = color {
            symbol.addAttribute(foregroundColor: color)
        }
        return symbol.image(size: size)
    }
}
