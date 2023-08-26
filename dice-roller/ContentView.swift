//
//  ContentView.swift
//  dice-roller
//
//  Created by Celine Quek on 20/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            singleDieRollerView()
                .tabItem {
                    Label("Single Die", systemImage: "die.face.5")
                }
            doubleDiceRollerView()
                .tabItem {
                    Label("Double Dice", systemImage: "dice")
                }
            coinFlipperView()
                .tabItem {
                    Label("Coin Flipper", systemImage: "dollarsign.circle.fill")
                }
            customDiceRollerView()
                .tabItem {
                    Label("Custom Die", systemImage: "number.square.fill")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
