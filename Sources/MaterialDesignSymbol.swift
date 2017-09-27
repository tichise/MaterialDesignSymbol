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
public class MaterialDesignSymbol:NSObject {
    
    var text:NSString = ""
    
    var mutableTextFontAttributes = [NSAttributedStringKey : AnyObject]()
    
    public init(text:NSString, size:CGFloat) {
        self.text = text
        
        self.mutableTextFontAttributes = [NSAttributedStringKey : AnyObject]()
        self.mutableTextFontAttributes[NSAttributedStringKey.paragraphStyle] = NSMutableParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        
        self.mutableTextFontAttributes[NSAttributedStringKey.font] = MaterialDesignFont.fontOfSize(size)
    }
    
    // MARK: - Method
    public func addAttribute(attributeName:NSAttributedStringKey, value:AnyObject) {
        self.mutableTextFontAttributes[attributeName] = value
    }

    /**
     // アイコンを画像形式で取得するのに使うメソッド
     - parameter size: サイズ
     - returns: UIImage
     */
    public func image(size:CGSize)->UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        
        let textRect  = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        self.text.draw(in: textRect, withAttributes: self.mutableTextFontAttributes)
        
        let image = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext()
        
        return image!
    }
}
