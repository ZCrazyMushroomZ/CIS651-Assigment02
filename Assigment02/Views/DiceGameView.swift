//
//  ContentView.swift
//  Assigment02
//
//  Created by 碳基生物 on 2/12/24.
//


import SwiftUI

struct DiceGameView: View {
    @ObservedObject private var game = DicePlay()
    @State private var resetAlert = false

    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.yellow, Color.white], startPoint: .topLeading, endPoint: .bottomLeading)
                .ignoresSafeArea()
            
            VStack(spacing: 15) {
                Text("")
                    .padding(.bottom, -5)
                Text("Round \(game.roundNumber)")
                    .font(Font.custom("PressStart2P-Regular", size: 40))
                    .foregroundColor(.blue)
                    .padding()

                HStack(spacing: 40) {
                    PlayerScoreView(score: game.playerScore, dice1: game.playerDice1, dice2: game.playerDice2)
                    ComputerScoreView(score: game.computerScore, dice1: game.computerDice1, dice2: game.computerDice2)
                }
                .padding()

                HStack(spacing: 20) {
                    Image("Roll")
                    Button("Play") {
                        game.playRound()
                    }
                    .padding()
                    .frame(width: 120)
                    .font(Font.custom("PressStart2P-Regular", size: 20))
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .bold()
                    .cornerRadius(15)
                    
                    .alert(isPresented: $game.showAlert) {
                        Alert(title: Text("Round Result"), message: Text("Player Score: \(game.playerScore)\nAI Score: \(game.computerScore)"), dismissButton: .default(Text("Dismiss")))
                    }
                }
                
                Button("Reset") {
                    resetAlert = true
                }
                .padding()
                .frame(width: 200)
                .font(Font.custom("PressStart2P-Regular", size: 20))
                .background(Color.red)
                .foregroundColor(.white)
                .bold()
                .cornerRadius(15)
                .alert(isPresented: $resetAlert) {
                    Alert(title: Text("Reset Warning"),
                          message: Text("Are you certain you wish to proceed with the reset?"),
                          primaryButton: .destructive(Text("Reset")) {
                              game.resetGame()
                          },
                          secondaryButton: .cancel(Text("Cancel")))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackView()
            .font(Font.custom("PressStart2P-Regular", size: 20))
            .foregroundColor(.orange))
        
    }
}



#Preview {
    DiceGameView()
}
