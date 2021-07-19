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
            MeowMixHeader()
                .padding()
            
            Divider()
                .padding()
            
        }
    }
}

struct FeaturedCats: View {
    let artists: [String]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured Cats")
                .font(.title)
                .padding(.leading)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let mix = MeowMix()
        
        ContentView()
        
        FeaturedCats(artists: mix.tracks.map(\.artist))
            .previewLayout(.sizeThatFits)

    }
}

