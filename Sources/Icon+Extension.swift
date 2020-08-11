//
//  Icon+Extension..swift
//  MaterialDesignSymbol
//
//  Created by tichise on 2020年8月10日 20/08/10.
//

import UIKit
import SwiftUI

@available(iOS 13.0, *)
extension Image {
    
    public init(icon: MaterialDesignIconEnum, size: CGFloat, color: UIColor = .black) {
        let symbol = MaterialDesignSymbol(icon: icon, size: size)
        symbol.addAttribute(foregroundColor: color)
        let iconImage = symbol.image(size: CGSize(width: size, height: size))
        
        self.init(uiImage: iconImage)
    }
}
