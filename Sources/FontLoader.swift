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
public class FontLoader:NSObject {
    
    /**
     引数で渡ってきたフォントを読み込みます
     
     - parameter name: フォントファイル名
     */
    public class func loadFont(name: String) {
        
        let ttfPath = Bundle(for:object_getClass(self)).path(forResource: name, ofType:"ttf")
        
        let fileHandle : FileHandle = FileHandle(forReadingAtPath: ttfPath!)!
        let data : NSData = fileHandle.readDataToEndOfFile() as NSData
        
        let provider = CGDataProvider(data: data)
        let font = CGFont(provider!)
        
        var error: Unmanaged<CFError>?
        
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            let errorDescription: CFString = CFErrorCopyDescription(error!.takeUnretainedValue())
            let nsError = error!.takeUnretainedValue() as AnyObject as! NSError
            NSException(name: NSExceptionName.internalInconsistencyException, reason: errorDescription as String, userInfo: [NSUnderlyingErrorKey: nsError]).raise()
        }
    }
}
