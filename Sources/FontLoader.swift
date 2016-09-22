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
open class FontLoader {
    
    /**
     引数で渡ってきたフォントを読み込みます
     
     - parameter name: フォントファイル名
     */
    open class func loadFont(_ name: String) {
        
        let ttfPath = Bundle(for:object_getClass(self)).path(forResource: name, ofType:"ttf")
        
        let fileHandle : FileHandle = FileHandle(forReadingAtPath: ttfPath!)!
        let data : Data = fileHandle.readDataToEndOfFile()
        
        let provider = CGDataProvider(data: data as CFData)
        let font = CGFont(provider!)
        
        var error: Unmanaged<CFError>?
        
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            let errorDescription: CFString = CFErrorCopyDescription(error!.takeUnretainedValue())
            let nsError = error!.takeUnretainedValue() as AnyObject as! NSError
            NSException(name: NSExceptionName.internalInconsistencyException, reason: errorDescription as String, userInfo: [NSUnderlyingErrorKey: nsError]).raise()
        }
    }
}
