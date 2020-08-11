//
//  SampleView.swift
//  Sample
//
//  Created by tichise on 2020年8月10日 20/08/10.
//  Copyright © 2020 tichise. All rights reserved.
//

import SwiftUI
import MaterialDesignSymbol

@available(iOS 13.0.0, *)
struct SampleView: View {
        
    var body: some View {
        VStack {
            Image(icon: .work48px, size: 50)
            Image(icon: .album24px, size: 30, color: .green)
        }
    }
}

@available(iOS 13.0.0, *)
struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
    }
}
