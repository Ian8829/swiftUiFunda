//
//  ContentView.swift
//  SUIFunda
//
//  Created by ian white on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    let mix = MeowMix()
    
    var body: some View {
        VStack(spacing: 0) {
            MeowMixHeader()
                .padding()
            
            Divider()
                .padding()
            
            List(mix.tracks) { track in TrackRow(track: track) }
            
            FeaturedCats(artists: mix.tracks.map(\.artist))
                .padding(.vertical)
                .background(Color.gray.opacity(0.2))
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
            
            ScrollView(.horizontal) {
                HStack(alignment: .top, spacing: 25) {
                    ForEach(artists, id: \.self) {
                        artist in FeaturedArtist(artist: artist)
                    }
                }
                .padding(25)
            }
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

struct FeaturedArtist: View {
    let artist: String
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(
                        [
                            Color.orange,
                            .pink,
                            .purple,
                            .red,
                            .yellow
                        ].randomElement()!)
                    .scaledToFit()
                
                Image(systemName: "music.mic")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
            }
            
            Text(artist)
                .multilineTextAlignment(.center)
                .lineLimit(2)
        }
        .frame(width: 120)
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
        
        FeaturedArtist(artist: "Keyboard Cat")
            .previewLayout(.sizeThatFits)

    }
}

