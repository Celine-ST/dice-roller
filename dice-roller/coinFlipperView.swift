//
//  coinFlipperView.swift
//  dice-roller
//
//  Created by Celine Quek on 26/8/23.
//

import SwiftUI

struct coinFlipperView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var numRolled = 1
    @State private var spin = 0.0
    @State private var numHeads = 0
    @State private var numTails = 0
    
    var body: some View {
        VStack {
            Image(systemName: numRolled == 1 ? "dollarsign.circle" : "dollarsign.circle.fill")
                .font(.system(size:200))
                .foregroundColor(.blue)
                .rotation3DEffect(.degrees(spin), axis: (x:0,y:1,z:0))
            Text(numRolled == 1 ? "Heads" : "Tails")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundColor(.blue)
            Text("Heads: \(numHeads), Tails: \(numTails)")
            
            Button {
                withAnimation {
                    numRolled = Int.random(in: 1...2)
                    spin += 360.0
                    if numRolled == 1 {
                        numHeads += 1
                    } else {
                        numTails += 1
                    }
                }
            } label: {
                Text("Flip Again")
                    .padding()
                    .background(.blue)
                    .foregroundColor(colorScheme == .dark ? .black : .white)
                    .cornerRadius(15)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                
            }
        }
    }
}

struct coinFlipperView_Previews: PreviewProvider {
    static var previews: some View {
        coinFlipperView()
    }
}
