//
//  Login.swift
//  test-swiftui
//
//  Created by Mac on 2/24/25.
//

import Foundation
import SwiftUI

struct Login:View{
    
    var body: some View{
        NavigationView{
            VStack{
                Color(red: 255, green: 0, blue: 0, opacity: 1)
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .top)
                    .overlay(
                        Text("Campus Navigator")
                            .font(.system(size: 48))
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .shadow(color: Color.init(white: 0, opacity: 0.08), radius: 14.3, x: 0.0, y: 3.0)
                            .shadow(color: Color.init(white: 0, opacity: 0.5), radius: 1)
                            .clipShape(Rectangle()))
                
                Color(red: 0.920, green: 0.920, blue: 0.920)
                    .frame(width: 300, height: 205, alignment: .top)
                    .padding(0)
                    .cornerRadius(10.0)
                    .shadow(color: Color.init(white: 0, opacity: 0.95), radius: 1, x: 0.0, y: 0.0)
                    .overlay(
                        VStack{
                            InputField(title: "Username")
                            
                            Color(white: 0, opacity: 0.4)
                                .frame(width: 270, height: 1)
                                .cornerRadius(10)
                            
                            PasswordField(title: "Password")
                            
                            HStack{
                                ToggleButton()
                                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                                Text("Forgot Password?")
                                    .font(.footnote)
                                    .fontWeight(.light)
                                    .foregroundColor(Color.blue)
                                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                                
                            }.frame(width: 300, height: 40)
                            
                            NavigationButton(title: "Login", dest: Homepage())
                        }.padding(.top, 25)
                        .padding(.bottom, 25)
                    )
                
                NavigationLink(
                    destination: SignUp(),
                    label: {
                        Text("Don't have an account?")
                            .foregroundColor(Color(red: 0.4, green: 0.478, blue: 0.702))
                            .font(.footnote)
                            .fontWeight(.regular)
                            .padding(.top, 20)
                    })
                
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .background(Color.white)
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 900, alignment: .top)
        .padding(.bottom, 10)
    }
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
