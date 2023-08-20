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
                    Label("Single Die", systemImage: "dice")
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
