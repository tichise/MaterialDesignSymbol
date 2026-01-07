//
//  MaterialDesignSymbol
//
//  Created by tichise on 2015/5/7 15/05/07.
//  Copyright (c) 2015 tichise. All rights reserved.
//

#if canImport(UIKit)
import UIKit

/// Main class for rendering Material Design icons as images
@MainActor
public final class MaterialDesignSymbol: Sendable {

    private let text: String
    private let fontSize: CGFloat
    private var attributes: [NSAttributedString.Key: Any]

    /// Initialize with a Material Design icon enum value
    /// - Parameters:
    ///   - icon: The icon to display
    ///   - size: The font size for the icon
    public init(icon: MaterialDesignIconEnum, size: CGFloat) {
        self.text = icon.rawValue
        self.fontSize = size
        self.attributes = Self.createDefaultAttributes(size: size)
    }

    /// Initialize with a raw text string (Unicode character)
    /// - Parameters:
    ///   - text: The Unicode character for the icon
    ///   - size: The font size for the icon
    public init(text: String, size: CGFloat) {
        self.text = text
        self.fontSize = size
        self.attributes = Self.createDefaultAttributes(size: size)
    }

    private static func createDefaultAttributes(size: CGFloat) -> [NSAttributedString.Key: Any] {
        var attrs: [NSAttributedString.Key: Any] = [:]

        if let paragraphStyle = NSMutableParagraphStyle.default.mutableCopy() as? NSMutableParagraphStyle {
            attrs[.paragraphStyle] = paragraphStyle
        }

        attrs[.font] = MaterialDesignFont.shared.fontOfSize(size)
        return attrs
    }

    // MARK: - Attribute Methods

    /// Add a custom attribute to the icon
    /// - Parameters:
    ///   - attributeName: The attribute key
    ///   - value: The attribute value
    public func addAttribute(attributeName: NSAttributedString.Key, value: Any) {
        attributes[attributeName] = value
    }

    /// Set the foreground color of the icon
    /// - Parameter foregroundColor: The color to apply
    public func addAttribute(foregroundColor: UIColor) {
        addAttribute(attributeName: .foregroundColor, value: foregroundColor)
    }

    // MARK: - Image Generation

    /// Generate an image from the icon with the specified size
    /// - Parameter size: The size of the output image
    /// - Returns: The rendered UIImage
    public func image(size: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { _ in
            let textRect = CGRect(origin: .zero, size: size)
            text.draw(in: textRect, withAttributes: attributes)
        }
    }

    /// Generate a square image from the icon using the font size as dimensions
    /// - Returns: The rendered UIImage
    public func image() -> UIImage {
        let size = CGSize(width: fontSize, height: fontSize)
        return image(size: size)
    }
}
#endif
