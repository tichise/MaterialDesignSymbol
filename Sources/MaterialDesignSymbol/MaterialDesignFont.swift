//
//  MaterialDesignFont
//
//  Created by tichise on 2015/5/7 15/05/07.
//  Copyright (c) 2015 tichise. All rights reserved.
//

#if !os(macOS)
import UIKit

/**
 マテリアルデザインアイコンをUIFont形式で呼ぶに使うクラス
 */
public struct MaterialDesignFont {
    
    static let shared = MaterialDesignFont()
    
    /// 呼び出すアイコンファイル名
    private let name = "Material Symbols Outlined"
    private let fileName = "MaterialSymbolsOutlined"

    private init() {
        loadFont()
    }
    
    /// このメソッドはSPMの場合だけ使います。
    public func loadFont() {
        /// 呼び出すアイコンファイル名
        registerFont(name: fileName, fileExtension: "ttf")
    }
    
    private func registerFont(name: String, fileExtension: String) {
        #if SWIFT_PACKAGE
        guard let fontURL = Bundle.module.url(forResource: name, withExtension: fileExtension) else {
            print("No font named \(name).\(fileExtension) was found in the module bundle")
            return
        }

        var error: Unmanaged<CFError>?
        CTFontManagerRegisterFontsForURL(fontURL as CFURL, .process, &error)
        print(error ?? "Successfully registered font: \(name)")
        #endif
    }

    /**
     アイコンをフォント形式で呼び出すのに使うメソッド
     - parameter fontSize: フォントサイズ
     - returns: UIFont
     */
    public func fontOfSize(_ fontSize: CGFloat) -> UIFont {

        // アイコンを呼び出す
        if UIFont.fontNames(forFamilyName: name).count == 0 {
            do {
                try FontLoader.loadFont(fileName)
            } catch FontError.invalidFontFile {
                print("invalidFontFile")
            } catch FontError.fontPathNotFound {
                print("fontPathNotFound")
            } catch FontError.initFontError {
                print("initFontError")
            } catch FontError.registerFailed {
                print("registerFailed")
            } catch {

            }
        }

        return UIFont(name: name, size: fontSize)!
    }
}
#endif
