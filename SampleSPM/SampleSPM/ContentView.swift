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
            Text("MaterialDesignSymbol Sample")

            Image(uiImage: MaterialDesignSymbol(icon: .album48px, size: 30).image())

            Image(uiImage: createColoredIcon())
        }
    }

    private func createColoredIcon() -> UIImage {
        let symbol = MaterialDesignSymbol(icon: .album24px, size: 30)
        symbol.addAttribute(foregroundColor: .green)
        return symbol.image()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
