//
//  Game.swift
//  Assigment02
//
//  Created by 碳基生物 on 2/12/24.
//

import Foundation
import UIKit

class DicePlay: ObservableObject {
    @Published var playerScore:Int
    @Published var computerScore:Int
    @Published var playerDice1:Int
    @Published var playerDice2:Int
    @Published var computerDice1:Int
    @Published var computerDice2:Int
    @Published var score: Int
    @Published var roundNumber: Int
    @Published var showAlert:Bool
    @Published var diceImages: [Int: String] = [
        1: "Dice1",
        2: "Dice2",
        3: "Dice3",
        4: "Dice4",
        5: "Dice5",
        6: "Dice6"
    ]
    
    init() {
        playerScore = 0
        computerScore = 0
        playerDice1 = 1
        playerDice2 = 1
        computerDice1 = 1
        computerDice2 = 1
        score = 0
        roundNumber = 1
        showAlert = false
    }
    
    
    func playRound() {
        playerDice1 = Int.random(in: 1...6)
        playerDice2 = Int.random(in: 1...6)
        computerDice1 = Int.random(in: 1...6)
        computerDice2 = Int.random(in: 1...6)
        
        let playerSum = playerDice1 + playerDice2
        let computerSum = computerDice1 + computerDice2
        
        if playerSum > computerSum {
            playerScore += 1
        } else if computerSum > playerSum {
            computerScore += 1
        }
        
        roundNumber += 1
        if roundNumber > 5 {
            showResult()
        }
        showAlert = true
    }
    
    func showResult() {
        let resultMessage: String
        if playerScore > computerScore {
            resultMessage = "Player wins!"
        } else if playerScore < computerScore {
            resultMessage = "Computer wins!"
        } else {
            resultMessage = "It's a tie!"
        }

        let alert = UIAlertController(title: "Game Over", message: resultMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
           
           // Access the view controller to present the alert
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: nil)
        resetGame()
       }
    
    
    func resetGame() {
        // Reset game state
        playerScore = 0
        computerScore = 0
        roundNumber = 1
        playerDice1 = 1
        playerDice2 = 1
        computerDice1 = 1
        computerDice2 = 1
        score = 0
        roundNumber = 1
    }
    
}
