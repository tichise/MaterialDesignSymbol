//
//  ContentView.swift
//  SampleSPM
//
//  Created by tichise on 2021年10月14日 21/10/14.
//

import SwiftUI
import MaterialDesignSymbol

struct ContentView: View {

    var body: some View {
        VStack {
            Image(materialDesignIcon: .album48px, size: 30)
            Image(materialDesignIcon: .album24px, size: 30, color: .green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
