//
//  SwiftUIViewFor14.swift
//  Sample
//
//  Created by tichise on 2020年9月18日 20/09/18.
//  Copyright © 2020 tichise. All rights reserved.
//

import SwiftUI
import MaterialDesignSymbol

@available(iOS 14.0.0, *)
struct SwiftUIViewFor14: View {

    var body: some View {
        VStack {
            Image(materialDesignIcon: .album48px, size: 30)
            Image(materialDesignIcon: .album24px, size: 30, color: .green)
        }
    }
}

@available(iOS 14.0.0, *)
struct SwiftUIViewFor14_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewFor14()
    }
}
