//
//  generalDiceRollerView.swift
//  dice-roller
//
//  Created by Celine Quek on 20/8/23.
//

import SwiftUI

struct singleDieRollerView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var numRolled = 1
    @State private var spin = 0.0
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numRolled).fill")
                .font(.system(size:200))
                .foregroundColor(.blue)
                .rotationEffect(.degrees(spin))
            Button {
                withAnimation {
                    numRolled = Int.random(in: 1...6)
                    spin += 90.0
                }
            } label: {
                Text("Roll Again")
                    .padding()
                    .background(.blue)
                    .foregroundColor(colorScheme == .dark ? .black : .white)
                    .cornerRadius(15)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                
            }
        }
    }
}

struct singleDieRollerView_Previews: PreviewProvider {
    static var previews: some View {
        singleDieRollerView()
    }
}
