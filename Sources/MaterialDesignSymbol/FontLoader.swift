//
//  FontLoader
//
//  Created by tichise on 2015/5/7 15/05/07.
//  Copyright (c) 2015 tichise. All rights reserved.
//

#if canImport(UIKit)
import UIKit
import CoreText

/// Errors that can occur during font loading
public enum FontError: Error, CustomStringConvertible, Sendable {
    case fontFileNotFound(name: String)
    case invalidFontData
    case fontCreationFailed
    case registrationFailed(Error?)

    public var description: String {
        switch self {
        case .fontFileNotFound(let name):
            return "Font file '\(name).ttf' not found in bundle"
        case .invalidFontData:
            return "Invalid font data"
        case .fontCreationFailed:
            return "Failed to create font from data"
        case .registrationFailed(let error):
            if let error = error {
                return "Font registration failed: \(error.localizedDescription)"
            }
            return "Font registration failed"
        }
    }
}

/// Utility class for loading custom fonts
public enum FontLoader {

    /// Load and register a font from the bundle
    /// - Parameter name: The font file name (without extension)
    /// - Throws: FontError if loading fails
    public static func loadFont(_ name: String) throws {
        guard let ttfPath = Bundle(for: BundleToken.self).path(forResource: name, ofType: "ttf") else {
            throw FontError.fontFileNotFound(name: name)
        }

        let fontURL = URL(fileURLWithPath: ttfPath)

        guard let fontData = try? Data(contentsOf: fontURL) else {
            throw FontError.invalidFontData
        }

        guard let provider = CGDataProvider(data: fontData as CFData) else {
            throw FontError.invalidFontData
        }

        guard let font = CGFont(provider) else {
            throw FontError.fontCreationFailed
        }

        var error: Unmanaged<CFError>?
        let success = CTFontManagerRegisterGraphicsFont(font, &error)

        if !success {
            let cfError = error?.takeRetainedValue()
            // Check if it's already registered (not a real error)
            if let cfError = cfError {
                let nsError = cfError as Error
                if (nsError as NSError).code == CTFontManagerError.alreadyRegistered.rawValue {
                    return // Font already registered, not an error
                }
            }
            throw FontError.registrationFailed(cfError.map { $0 as Error })
        }
    }
}

/// Helper class to get the correct bundle
private final class BundleToken {}
#endif
