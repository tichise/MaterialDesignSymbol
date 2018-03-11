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
open class MaterialDesignSymbol:NSObject {
    
    var text:String = ""
    
    var mutableTextFontAttributes = [NSAttributedStringKey : Any]()
    
    @objc public init(text:String, size:CGFloat) {
        self.text = text
        
        self.mutableTextFontAttributes = [NSAttributedStringKey : Any]()
        self.mutableTextFontAttributes[NSAttributedStringKey.paragraphStyle] = NSMutableParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        
        self.mutableTextFontAttributes[NSAttributedStringKey.font] = MaterialDesignFont.fontOfSize(size)
    }
    
    // MARK: - Method
    @objc public func addAttribute(attributeName:NSAttributedStringKey, value:Any) {
        self.mutableTextFontAttributes[attributeName] = value
    }

    /**
     // アイコンを画像形式で取得するのに使うメソッド
     - parameter size: サイズ
     - returns: UIImage
     */
    @objc public func image(size:CGSize)->UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        
        let textRect  = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        self.text.draw(in: textRect, withAttributes: self.mutableTextFontAttributes)
        
        let image = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext()
        
        return image!
    }
}
