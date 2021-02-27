//
//  MaterialDesignSymbol
//
//  Created by tichise on 2015/5/7 15/05/07.
//  Copyright (c) 2015 tichise. All rights reserved.
//

import UIKit

/**
 * MaterialDesignSymbolのメインクラス
 */
public class MaterialDesignSymbol {

    var text = ""
    var fontOfSize: CGFloat = 30

    var mutableTextFontAttributes = [NSAttributedString.Key: Any]()
    
    public init(icon: MaterialDesignIconEnum, size: CGFloat) {
        self.text = icon.rawValue
        self.fontOfSize = size

        self.mutableTextFontAttributes = [NSAttributedString.Key: Any]()
        
        if let paragraphStyle = NSMutableParagraphStyle.default.mutableCopy() as? NSMutableParagraphStyle {
            self.mutableTextFontAttributes[NSAttributedString.Key.paragraphStyle] = paragraphStyle
        }

        self.mutableTextFontAttributes[NSAttributedString.Key.font] = MaterialDesignFont.shared.fontOfSize(size)
    }

    public init(text: String, size: CGFloat) {
        self.text = text
        self.fontOfSize = size

        self.mutableTextFontAttributes = [NSAttributedString.Key: Any]()
        
        if let paragraphStyle = NSMutableParagraphStyle.default.mutableCopy() as? NSMutableParagraphStyle {
            self.mutableTextFontAttributes[NSAttributedString.Key.paragraphStyle] = paragraphStyle
        }

        self.mutableTextFontAttributes[NSAttributedString.Key.font] = MaterialDesignFont.shared.fontOfSize(size)
    }

    // MARK: - Method
    public func addAttribute(attributeName: NSAttributedString.Key, value: Any) {
        self.mutableTextFontAttributes[attributeName] = value
    }
    
    public func addAttribute(foregroundColor: UIColor) {
        addAttribute(attributeName: NSAttributedString.Key.foregroundColor, value: foregroundColor)
    }

    /**
     // アイコンを画像形式で取得するのに使うメソッド
     - parameter size: サイズ
     - returns: UIImage
     */
    public func image(size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)

        let textRect  = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        self.text.draw(in: textRect, withAttributes: self.mutableTextFontAttributes)

        let image = UIGraphicsGetImageFromCurrentImageContext()

        UIGraphicsEndImageContext()

        return image!
    }
    
    /**
     // アイコンを画像形式で取得するのに使うメソッド
     - parameter size: サイズ
     - returns: UIImage
     */
    public func image() -> UIImage {
        let size = CGSize(width: fontOfSize, height: fontOfSize)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0)

        let textRect  = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        self.text.draw(in: textRect, withAttributes: self.mutableTextFontAttributes)

        let image = UIGraphicsGetImageFromCurrentImageContext()

        UIGraphicsEndImageContext()

        return image!
    }
}
