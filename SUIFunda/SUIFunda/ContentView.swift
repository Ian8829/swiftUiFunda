//
//  ContentView.swift
//  SUIFunda
//
//  Created by ian white on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .frame(width: 100.0, height: 100.0)
                .background(Color.orange)
                .padding([.leading, .bottom, .trailing])
            
            Text("Hello, world!")
                .fontWeight(.bold)
                .kerning(5.0)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
