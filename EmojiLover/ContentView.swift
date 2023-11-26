//
//  ContentView.swift
//  EmojiLover
//
//  Created by Vidyesh Bipin Churi on 26/11/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case smilingFaceWithHeart="🥰"
    case iLoveYou="🤟🏻"
    case tennisRacketAndBall="🎾"
    case fourLeafClover="🍀"
    case tulip="🌷"
}

struct ContentView: View {
    @State var selection: Emoji = Emoji.tulip
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello"+selection.rawValue)
                    .font(.system(size: 32))
                
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }.pickerStyle(.segmented)
            }.navigationTitle("Emoji Lovers!").padding()
        }
    }
}

#Preview {
    ContentView()
}
