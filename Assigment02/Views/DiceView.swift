//
//  DiceView.swift
//  Assigment02
//
//  Created by 碳基生物 on 2/13/24.
//

import Foundation
import SwiftUI

struct DiceView: View {
    @ObservedObject private var game = DicePlay()
    let value: Int
    var body: some View {
        let die_s = game.diceImages[value] ?? "default"
        Image(die_s)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50)
    }
}
