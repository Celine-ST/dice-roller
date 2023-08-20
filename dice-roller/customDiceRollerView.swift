//
//  customDiceRollerView.swift
//  dice-roller
//
//  Created by Celine Quek on 20/8/23.
//

import SwiftUI

struct customDiceRollerView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var numRolled = 1
    @State private var spin = 0
    @State private var maxDieNum = 6
    
    var body: some View {
        VStack {
            Image(systemName: numRolled == 0 ? "exclamationmark.square.fill" : numRolled < 7 ? "die.face.\(numRolled).fill" : "\(numRolled).square.fill")
                .font(.system(size:200))
                .foregroundColor(.blue)
                .rotationEffect(.degrees(Double(spin)))
            Button {
                withAnimation {
                    if maxDieNum > 0 && maxDieNum < 51 {
                        numRolled = Int.random(in: 1...maxDieNum)
                        spin += 90
                    } else {
                        numRolled = 0
                        spin += 90
                        while spin % 360 != 0 {
                            spin += 90
                        }
                    }
                }
            } label: {
                Text("Roll Again")
                    .padding()
                    .background(.blue)
                    .foregroundColor(colorScheme == .dark ? .black : .white)
                    .cornerRadius(15)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
            }
            Text("Faces on Die")
            HStack {
                Text("\(maxDieNum)")
                Stepper("BE GONE BEASTLY TEXT", value: $maxDieNum)
                    .labelsHidden()
            }
        }
    }
}

struct customDiceRollerView_Previews: PreviewProvider {
    static var previews: some View {
        customDiceRollerView()
    }
}
