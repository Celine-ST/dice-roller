//
//  doubleDieRollerView.swift
//  dice-roller
//
//  Created by Celine Quek on 20/8/23.
//

import SwiftUI

struct doubleDiceRollerView: View {
    @State private var numRolled = 1
    @State private var spin1 = 0.0
    @State private var spin2 = 0.0
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "die.face.\(numRolled).fill")
                    .font(.system(size:200))
                    .foregroundColor(.blue)
                    .rotationEffect(.degrees(spin1))
                Image(systemName: "die.face.\(numRolled).fill")
                    .font(.system(size:200))
                    .foregroundColor(.blue)
                    .rotationEffect(.degrees(spin2))
            }
            Button {
                withAnimation {
                    numRolled = Int.random(in: 1...6)
                    spin1 += 90.0
                    spin2 -= 90.0
                }
            } label: {
                Text("Roll Again")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                
            }
        }
    }
}

struct doubleDiceRollerView_Previews: PreviewProvider {
    static var previews: some View {
        doubleDiceRollerView()
    }
}
