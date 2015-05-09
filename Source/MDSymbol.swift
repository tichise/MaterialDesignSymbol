//
//  MDSymbol
//
//  Created by tichise on 2015年5月7日 15/05/07.
//  Copyright (c) 2015年 tichise. All rights reserved.
//

import UIKit

class MDSymbol: NSObject {
    
    var text:NSString = ""
    var mutableTextFontAttributes = [NSObject : AnyObject]()
    
    init(text:NSString, size:CGFloat) {
        self.text = text
        
        self.mutableTextFontAttributes = [NSObject : AnyObject]()
        self.mutableTextFontAttributes[NSParagraphStyleAttributeName] = NSMutableParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        self.mutableTextFontAttributes[NSFontAttributeName] = UIFont(name: "googleicon" as String, size: size)!
    }
    
    func addAttribute(attributeName:NSObject, value:AnyObject) {
        self.mutableTextFontAttributes[attributeName as NSObject] = value
    }
    
    func imageWithSize(size:CGSize)->UIImage {
        let imageRect = CGRectMake(0,0,size.width, size.height)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        
        let textRect  = CGRectMake(0, 0, size.width, size.height)
        self.text.drawInRect(textRect, withAttributes: self.mutableTextFontAttributes)
        
        let image = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext()
        
        return image
    }
}
