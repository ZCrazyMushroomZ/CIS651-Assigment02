//
//  DiceRule.swift
//  Assigment02
//
//  Created by 碳基生物 on 2/13/24.
//

import Foundation
import SwiftUI

struct DiceRuleView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            Text("Dice Game Rule:")
                .font(Font.custom("PressStart2P-Regular", size: 20))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding([.leading, .top], 25)
            ScrollView {
                Text("Objective: The objective of the game is to have a higher score than the computer after 5 rounds.")
                    .font(.title2)
                    .bold()
                    .padding(10)
                    .foregroundColor(.orange)
                            
                Text("Game Setup: Each player (player and computer) starts with a score of 0. The game consists of 5 rounds.")
                    .font(.title2)
                    .bold()
                    .padding(10)
                    .foregroundColor(.orange)
                            
                Text("Round Sequence: In each round, both players roll two six-sided dice. The sum of the two dice rolled represents the player's score for that round.")
                    .font(.title2)
                    .bold()
                    .padding(10)
                    .foregroundColor(.orange)
                Text("Scoring: The player with the higher sum of the two dice wins the round and earns a point. If the sums are equal, the round is a tie, and no points are awarded.")
                    .font(.title2)
                    .bold()
                    .padding(10)
                    .foregroundColor(.orange)
                Text("End of Round: After each round, the scores are updated, and the round number is incremented.")
                    .font(.title2)
                    .bold()
                    .padding(10)
                    .foregroundColor(.orange)
                Text("End of Game: After 5 rounds, the player and computer compare their total scores. The player with the higher total score wins the game. If the scores are equal, the game is a tie.")
                    .font(.title2)
                    .bold()
                    .padding(10)
                    .foregroundColor(.orange)
                Text("Game Result: The game result (win, lose, or tie) is displayed to the player at the end of the 5 rounds.")
                    .font(.title2)
                    .bold()
                    .padding(10)
                    .foregroundColor(.orange)
            }
            .padding([.leading, .trailing], 14)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackView()
            .font(Font.custom("PressStart2P-Regular", size: 20))
            .foregroundColor(.orange))
        
    }
}


#Preview {
   DiceRuleView()
}
