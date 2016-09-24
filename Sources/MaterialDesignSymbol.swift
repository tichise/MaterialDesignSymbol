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
    
    var text:NSString = ""
    
    var mutableTextFontAttributes = [String : AnyObject]()
    
    public init(text:NSString, size:CGFloat) {
        self.text = text
        
        self.mutableTextFontAttributes = [String : AnyObject]()
        self.mutableTextFontAttributes[NSParagraphStyleAttributeName] = NSMutableParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        
        self.mutableTextFontAttributes[NSFontAttributeName] = MaterialDesignFont.fontOfSize(size)
    }
    
    // MARK: - Method
    public func addAttribute(attributeName:String, value:AnyObject) {
        self.mutableTextFontAttributes[attributeName] = value
    }

    /**
     // アイコンを画像形式で取得するのに使うメソッド
     - parameter size: サイズ
     - returns: UIImage
     */
    public func imageWithSize(size:CGSize)->UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        
        let textRect  = CGRectMake(0, 0, size.width, size.height)
        self.text.drawInRect(textRect, withAttributes: self.mutableTextFontAttributes)
        
        let image = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext()
        
        return image!
    }
}
