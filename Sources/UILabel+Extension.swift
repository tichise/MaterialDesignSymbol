//
//  UILabel+Extension
//  MaterialDesignSymbol
//
//  Created by tichise on 2020年8月10日 20/08/10.
//

import UIKit

extension UILabel {
    
    public func set(icon: MaterialDesignIconEnum, fontSize: CGFloat) {
        self.font = MaterialDesignFont.fontOfSize(fontSize)
        self.text = icon.rawValue
    }
}
