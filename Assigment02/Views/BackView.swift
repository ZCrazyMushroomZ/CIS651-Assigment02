//
//  BackView.swift
//  Assigment02
//
//  Created by 碳基生物 on 2/13/24.
//

import Foundation
import SwiftUI
struct BackView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button("Back") {
            dismiss()
        }
    }
}
