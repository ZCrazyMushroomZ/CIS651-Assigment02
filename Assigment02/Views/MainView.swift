//
//  MainView.swift
//  Assigment02
//
//  Created by 碳基生物 on 2/13/24.
//


import SwiftUI

struct MainView: View {
    var body: some View {
        
        
        NavigationView {
            ZStack {
                LinearGradient(colors: [Color.yellow, Color.white], startPoint: .topLeading, endPoint: .bottomLeading)
                    .ignoresSafeArea()
                VStack(spacing: 5) {
                    Text("")
                        .padding(.top, 80)
                    Text("Dice Game")
                        .font(Font.custom("PressStart2P-Regular", size: 40))
                        .foregroundColor(.blue)
                        .padding(.top, -100)
                    NavigationLink(destination: DiceGameView()) {
                        Text("Play")
                            .frame(width: 100)
                            .font(Font.custom("PressStart2P-Regular", size: 15))
                            .padding()
                            .bold()
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                    NavigationLink(destination: DiceRuleView()) {
                        Text("Rule")
                            .frame(width: 100)
                            .font(Font.custom("PressStart2P-Regular", size: 15))
                            .padding()
                            .bold()
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                    NavigationLink(destination: AboutView()) {
                        Text("About")
                            .frame(width: 100)
                            .font(Font.custom("PressStart2P-Regular", size: 15))
                            .padding()
                            .bold()
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
   MainView()
}
