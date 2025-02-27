//
//  BackButton.swift
//  iOS-Campus-Navigator
//
//  Created by Gimantha 044 on 2025-02-27.
//

import Foundation
import SwiftUI

struct BackButton: View{
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .foregroundStyle(Color.blue)
                .fontWeight(.semibold)
                .font(.title3)
            
            Text("Back")
                .foregroundStyle(Color.blue)
            
        }
    }
}

struct BackButton_Previews: PreviewProvider{
    static var previews: some View{
        BackButton()
    }
}
