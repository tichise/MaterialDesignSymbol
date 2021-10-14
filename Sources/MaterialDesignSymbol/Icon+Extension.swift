//
//  Icon+Extension..swift
//  MaterialDesignSymbol
//
//  Created by tichise on 2020年8月10日 20/08/10.
//

import SwiftUI

extension Image {
    public init(materialDesignIcon: MaterialDesignIconEnum, size: CGFloat, color: Color) {
        let symbol = MaterialDesignSymbol(icon: materialDesignIcon, size: size)
        symbol.addAttribute(foregroundColor: UIColor(color))
        let iconImage = symbol.image(size: CGSize(width: size, height: size))
        
        self.init(uiImage: iconImage)
    }
}
