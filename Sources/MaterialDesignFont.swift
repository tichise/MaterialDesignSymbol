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
public class MaterialDesignFont {
    
    /**
     アイコンをフォント形式で呼び出すのに使うメソッド
     - parameter fontSize: フォントサイズ
     - returns: UIFont
     */
    public class func fontOfSize(fontSize: CGFloat) -> UIFont {
        
        struct Static {
            
            // MARK: - Properties
            static var onceToken : dispatch_once_t = 0
        }
        
        /// 呼び出すアイコンファイル名
        let name = "material-design-icons"
        
        // アイコンを呼び出す
        if (UIFont.fontNamesForFamilyName(name).count == 0) {
            dispatch_once(&Static.onceToken) {
                FontLoader.loadFont(name)
            }
        }
        
        return UIFont(name: name, size: fontSize)!
    }
}