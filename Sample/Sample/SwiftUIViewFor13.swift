//
//  SwiftUIViewFor13.swift
//  Sample
//
//  Created by tichise on 2020年9月18日 20/09/18.
//  Copyright © 2020 tichise. All rights reserved.
//

import SwiftUI
import MaterialDesignSymbol

@available(iOS 13.0.0, *)
struct SwiftUIViewFor13: View {

    var body: some View {
        VStack {
            Image(materialDesignIcon: .album24px, size: 30, uiColor: .green)
            Image(materialDesignIcon: .album24px, size: 30)
        }
    }
}

@available(iOS 13.0.0, *)
struct SwiftUIViewFor13_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewFor13()
    }
}
