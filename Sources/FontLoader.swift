//
//  FontLoader
//
//  Created by tichise on 2015/5/7 15/05/07.
//  Copyright (c) 2015 tichise. All rights reserved.
//

import UIKit

/**
 フォント読み込み用クラス
 */
public class FontLoader {
    
    /**
     引数で渡ってきたフォントを読み込みます
     
     - parameter name: フォントファイル名
     */
    public class func loadFont(name: String) {
        
        let ttfPath = NSBundle(forClass:object_getClass(self)).pathForResource(name, ofType:"ttf")
        
        let fileHandle : NSFileHandle = NSFileHandle(forReadingAtPath: ttfPath!)!
        let data : NSData = fileHandle.readDataToEndOfFile()
        
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