//
//  TextField.swift
//  test-swiftui
//
//  Created by Mac on 2/26/25.
//

import Foundation
import SwiftUI

struct InputField: View {
    
    @State var title = "Input Field"
    @State private var username = ""
    
    var body: some View{
        Color(white: 0, opacity: 0.06)
            .frame(width: 280, height: 40)
            .cornerRadius(10)
            .overlay(
                TextField(title, text: $username)
                    .padding(.all, 10)
                    .foregroundColor(Color(white: 0, opacity: 0.6))
            )
    }
}

struct InputField_Previews: PreviewProvider {
    static var previews: some View{
        InputField()
    }
}
