//
//  PasswordField.swift
//  test-swiftui
//
//  Created by Mac on 2/25/25.
//

import Foundation
import SwiftUI

struct PasswordField: View{
    
    @State var title = "Password Field"
    @State private var password = ""
    @State private var isHidden = true
    
    var body: some View{
        Color(white: 0, opacity: 0.06)
            .frame(width: 280, height: 40)
            .cornerRadius(10)
            .overlay(
                HStack{
                    if isHidden{
                        SecureField(title, text: $password)
                            .padding(.all, 10)
                            .foregroundColor(Color(white: 0, opacity: 0.6))
                                                   
                    }
                    else{
                        TextField(title, text: $password)
                            .padding(.all, 10)
                            .foregroundColor(Color(white: 0, opacity: 0.6))
                        
                    }
                    Spacer()
                    
                    Button(action: {
                        isHidden.toggle()
                    }, label: {
                        Image(systemName: isHidden ? "eye" : "eye.slash")
                            .resizable()
                            .frame(width: 20, height: 16)
                            .opacity(1)
                            .padding(.all, 10)
                            .foregroundColor(Color(white: 0, opacity: 0.4))
                    })
                }
            )
    }
}

struct PasswordField_Preview: PreviewProvider{
    static var previews: some View{
        PasswordField()
    }
}
