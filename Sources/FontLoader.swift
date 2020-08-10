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
    public class func loadFont(_ name: String) throws {

        guard let ttfPath = Bundle(for: object_getClass(self)!).path(forResource: name, ofType: "ttf") else {
            throw FontError.invalidFontFile
        }

        guard let fileHandle = FileHandle(forReadingAtPath: ttfPath) else {
            throw FontError.fontPathNotFound
        }

        let data = fileHandle.readDataToEndOfFile()

        guard let provider = CGDataProvider(data: data as CFData) else {
            throw FontError.invalidFontFile
        }

        guard let font = CGFont(provider) else {
            throw FontError.initFontError
        }

        var error: Unmanaged<CFError>?

        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            throw FontError.registerFailed
        }
    }
}

public enum FontError: Error {
  case invalidFontFile
  case fontPathNotFound
  case initFontError
  case registerFailed
}
