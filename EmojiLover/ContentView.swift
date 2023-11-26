//
//  ContentView.swift
//  EmojiLover
//
//  Created by Vinit Bipin Churi on 26/11/23.
//

import SwiftUI

enum Emoji: String {
    case 🥰,🤟🏻,🎾,🍀,🌷
}

struct ContentView: View {
    var body: some View {
        var selection: Emoji = .🌷
        Text("Hello"+selection.rawValue)
            .font(.system(size: 32))
    }
}

#Preview {
    ContentView()
}
