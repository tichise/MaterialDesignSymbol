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

    var mutableTextFontAttributes = [NSAttributedString.Key: Any]()

    public init(text: String, size: CGFloat) {
        self.text = text

        self.mutableTextFontAttributes = [NSAttributedString.Key: Any]()
        
        if let paragraphStyle = NSMutableParagraphStyle.default.mutableCopy() as? NSMutableParagraphStyle {
            self.mutableTextFontAttributes[NSAttributedString.Key.paragraphStyle] = paragraphStyle
        }

        self.mutableTextFontAttributes[NSAttributedString.Key.font] = MaterialDesignFont.fontOfSize(size)
    }

    // MARK: - Method
    public func addAttribute(attributeName: NSAttributedString.Key, value: Any) {
        self.mutableTextFontAttributes[attributeName] = value
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
}
