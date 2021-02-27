//
//  ContentView.swift
//  SampleSPM
//
//  Created by tichise on 2021年2月27日 21/02/27.
//

import SwiftUI
import MaterialDesignSymbol

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("Hello, world!")
                .padding()
            Image(materialDesignIcon: .album24px, size: 30, color: Color.green)
            Image(materialDesignIcon: .photo48px, size: 30, color: Color.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
