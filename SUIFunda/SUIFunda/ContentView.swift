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

struct TrackRow: View {
  let track: Track
  
  var body: some View {
    HStack {
      track.thumbnail
        .padding()
        .background(track.gradient)
        .cornerRadius(6)
      
      Text(track.title)
        
      Text(track.artist)
        .foregroundColor(.secondary)
        .lineLimit(1)
        .truncationMode(.tail)
      
      Spacer()
      
      Text("\(track.duration)")
    }
  }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let mix = MeowMix()
        
        ContentView()
        
        FeaturedCats(artists: mix.tracks.map(\.artist))
            .previewLayout(.sizeThatFits)
        
        TrackRow(track: mix.tracks.first!)
            .previewLayout(.sizeThatFits)

    }
}

