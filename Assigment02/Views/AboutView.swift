//
//  Personal.swift
//  Assigment02
//
//  Created by 碳基生物 on 2/13/24.
//

import Foundation
import SwiftUI

struct AboutView: View {
    @State private var eggAlert = false
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Proflie:")
                .font(Font.custom("PressStart2P-Regular", size: 20))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding([.leading, .top], 25)
            
           
            ScrollView {
                Text("Name: Yulong Chen")
                    .font(.title2)
                    .bold()
                    .padding(.leading, -125)
                    .foregroundColor(.orange)
                
                Text("Profile: My motto is (study hard and make progress every day).")
                    .font(.title2)
                    .bold()
                    .padding([.leading, .trailing], 25)
                    .foregroundColor(.orange) // Change text color
                Image("about")
                    .resizable()
//                    .scaledToFit()
                    .aspectRatio(contentMode: .fit).frame(width: 400, height: 450)
                
                HStack {
                    Image("eggs")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .onTapGesture {
                            eggAlert = true
                        }
                    .alert(isPresented: $eggAlert) {
                        Alert(title: Text("Easter eggs"), message: Text("Have a good day!") .bold(), dismissButton: .default(Text("Accept")))
                    }
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
    AboutView()
}

