//
//  MaterialDesignFont
//
//  Created by tichise on 2015/5/7 15/05/07.
//  Copyright (c) 2015 tichise. All rights reserved.
//

import UIKit

/**
 マテリアルデザインアイコンをUIFont形式で呼ぶに使うクラス
 */
public struct MaterialDesignFont {

    /**
     アイコンをフォント形式で呼び出すのに使うメソッド
     - parameter fontSize: フォントサイズ
     - returns: UIFont
     */
    public static func fontOfSize(_ fontSize: CGFloat) -> UIFont {
        /// 呼び出すアイコンファイル名
        let name = "material-design-icons"

        // アイコンを呼び出す
        if UIFont.fontNames(forFamilyName: name).count == 0 {
            do {
                try FontLoader.loadFont(name)
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
