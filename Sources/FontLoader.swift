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

        guard let ttfPath = Bundle(for: object_getClass(self)!).path(forResource: name, ofType: "ttf") else {
            fatalError("Can't find the ttfPath.")
        }

        guard let fileHandle = FileHandle(forReadingAtPath: ttfPath) else {
            fatalError("Can't find the fileHandle.")
        }

        let data = fileHandle.readDataToEndOfFile()

        guard let provider = CGDataProvider(data: data as CFData) else {
            fatalError("Can't find the provider.")
        }

        guard let font = CGFont(provider) else {
            fatalError("Can't find the font.")
        }

        var error: Unmanaged<CFError>?

        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            guard let error = error else {
                fatalError("Error not found.")
            }

            let errorDescription: CFString = CFErrorCopyDescription(error.takeUnretainedValue())
            let nsError = error.takeUnretainedValue() as AnyObject as! NSError

            NSException(name: NSExceptionName.internalInconsistencyException, reason: errorDescription as String, userInfo: [NSUnderlyingErrorKey: nsError]).raise()
        }
    }
}
