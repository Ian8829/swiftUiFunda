//
//  ContentView.swift
//  SUIFunda
//
//  Created by ian white on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            VStack(alignment: .leading) {
                Text("Meow! Mix")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Apple Music for Ozma")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.accentColor)
                
                Text("Updated Caturday")
                    .font(Font.system(.body).smallCaps())
            }
            
            Text("Whether you're a kitten or an old-timer, get meowing with this purrsonalized mix of music to meow to!")
            
            HStack(spacing: 12.0) {
                Button { print("Play!") }
                    label: {
                        ButtonLabel(title: "Play", systemImage: "play.fill")
                    }
                
                Button { print("Shuffle!") }
                    label: {
                        ButtonLabel(title: "Shuffle", systemImage: "shuffle")
                    }
            }
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

struct ButtonLabel: View {
    let title: String
    let systemImage: String
    
    var body: some View {
        HStack {
            Spacer()
            Label(title, systemImage: systemImage)
            Spacer()
        }
        .padding(.vertical)
        .background(Color.gray.opacity(0.15))
        .cornerRadius(12)
    }
}
