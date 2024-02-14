//
//  ComputerScoreView.swift
//  Assigment02
//
//  Created by 碳基生物 on 2/14/24.
//

import Foundation
import SwiftUI

struct ComputerScoreView: View {
    let score: Int
    let dice1: Int
    let dice2: Int
    
    var body: some View {
        VStack {
            Text("AI Score: \(score)")
                .foregroundColor(.blue)
                .font(Font.custom("PressStart2P-Regular", size: 15))
                .bold()
            HStack {
                DiceView(value: dice1)
                DiceView(value: dice2)
            }
        }
        .padding()
        .background(Color.red.opacity(0.2))
        .cornerRadius(10)
    }
}
