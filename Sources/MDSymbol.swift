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
        
        if (UIFont.fontNamesForFamilyName("googleicon").count == 0) {
            FontLoader.loadFont("googleicon")
        }
        
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

private class FontLoader {
    class func loadFont(name: String) {
        let bundle = NSBundle.mainBundle()
        let fontURL = bundle.URLForResource(name, withExtension: "ttf")
        
        let data = NSData(contentsOfURL: fontURL!)!
        
        let provider = CGDataProviderCreateWithCFData(data)
        let font = CGFontCreateWithDataProvider(provider)!
        
        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            let errorDescription: CFStringRef = CFErrorCopyDescription(error!.takeUnretainedValue())
            let nsError = error!.takeUnretainedValue() as AnyObject as! NSError
            NSException(name: NSInternalInconsistencyException, reason: errorDescription as String, userInfo: [NSUnderlyingErrorKey: nsError]).raise()
        }
    }
}
