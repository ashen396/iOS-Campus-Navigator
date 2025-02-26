//
//  SignUp.swift
//  test-swiftui
//
//  Created by Mac on 2/26/25.
//

import Foundation
import SwiftUI

struct SignUp: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        VStack{
            Text("Create a new account")
            
            ScrollView{
                InputField(title: "Username")
                    .padding(.bottom, 8)
                InputField(title: "Student ID")
                    .padding(.bottom, 8)
                ComboPicker(title: "Batch", list: ["Diploma in SE", "Higher Diploma in SE", "Diploma in Networking", "Higher Diploma in Networking"])
                    .padding(.bottom, 8)
                ComboPicker(title: "Branch", list: ["Colombo", "Galle", "Kandy", "Matara"])
                    .padding(.bottom, 8)
                InputField(title: "Email")
                    .padding(.bottom, 8)
                InputField(title: "Mobile")
                    .padding(.bottom, 8)
                PasswordField(title: "Password")
                    .padding(.bottom, 8)
                PasswordField(title: "Confirm Password")
                    .padding(.bottom, 8)
            }
            
            CustomButton(title: "Sign Up", action: { self.presentationMode.wrappedValue.dismiss()
            })
                
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        .padding(.top, 15)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View{
        SignUp()
    }
}
