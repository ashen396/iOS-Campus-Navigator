//
//  ChipButton.swift
//  iOS-Campus-Navigator
//
//  Created by Gimantha 044 on 2025-02-28.
//

import Foundation
import SwiftUI

struct ChipButton: View{
    
    @State var width: CGFloat = 120
    @State var buttonText: String = "+ Button"
    
    var body: some View{
        Color(Color.blue)
            .frame(width: width, height: 40)
            .overlay(
                (RoundedRectangle(cornerSize: CGSize(width: width, height: 40)).stroke(Color(red: 0, green:0, blue:0, opacity: 0.3), lineWidth: 5)
                    .cornerRadius(10))
            ).cornerRadius(20)
            .overlay(
                Text(buttonText)
                    .foregroundStyle(Color.white)
            )
    }
}

struct ChipButton_Previews: PreviewProvider{
    static var previews: some View{
        ChipButton()
    }
}
