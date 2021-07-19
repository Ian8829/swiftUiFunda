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
            Text("Meow! Mix")
                .font(.title)
                .fontWeight(.semibold)
            
            Text("Apple Music for Ozma")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(.accentColor)
            
            Text("Updated Caturday")
                .font(Font.system(.body).smallCaps())
            
            Text("Whether you're a kitten or an old-timer, get meowing with this purrsonalized mix of music to meow to!")
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Image("meowMix")
            .resizable()
            .frame(maxHeight: 250)
            .previewLayout(.sizeThatFits)
            
        
        ContentView()
    }
}
