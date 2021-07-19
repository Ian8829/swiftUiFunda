//
//  DetailView.swift
//  SUIFunda
//
//  Created by ian white on 2021/07/19.
//

import SwiftUI

struct DetailView: View {
	var track: String
	
    var body: some View {
        Text("Track Name is \(track)")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
			DetailView(track: "test in detail")
    }
}
