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
    
    @available(*, deprecated, message: "Use an initializer whose arguments have been renamed.")
    public init(icon: MaterialDesignIconEnum, size: CGFloat, color: UIColor = .black) {
        let symbol = MaterialDesignSymbol(icon: icon, size: size)
        symbol.addAttribute(foregroundColor: color)
        let iconImage = symbol.image(size: CGSize(width: size, height: size))
        
        self.init(uiImage: iconImage)
    }
    
    public init(materialDesignIcon: MaterialDesignIconEnum, size: CGFloat, color: UIColor = .black) {
        let symbol = MaterialDesignSymbol(icon: materialDesignIcon, size: size)
        symbol.addAttribute(foregroundColor: color)
        let iconImage = symbol.image(size: CGSize(width: size, height: size))
        
        self.init(uiImage: iconImage)
    }
}

@available(iOS 14.0, *)
extension Image {
    public init(materialDesignIcon: MaterialDesignIconEnum, size: CGFloat, color: Color = .black) {
        let symbol = MaterialDesignSymbol(icon: materialDesignIcon, size: size)
        symbol.addAttribute(foregroundColor: UIColor(color))
        let iconImage = symbol.image(size: CGSize(width: size, height: size))
        
        self.init(uiImage: iconImage)
    }
}
