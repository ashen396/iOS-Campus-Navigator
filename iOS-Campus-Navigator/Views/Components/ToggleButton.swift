//
//  Toggle.swift
//  test-swiftui
//
//  Created by Mac on 2/25/25.
//

import SwiftUI

struct ToggleButton: View{
    
    @State var isChecked = true
    
    var body: some View{
        Button(action: {
            isChecked = !isChecked
        }, label: {
            HStack{
                Rectangle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(red: 0.608, green: 0.643, blue: 1))
                    .cornerRadius(5)
                    .overlay(
                        isChecked ? Image("CheckIcon")
                            .resizable()
                            .frame(width: 22, height: 22)
                            .foregroundColor(Color(red: 0, green: 0, blue: 0))
                        .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0)) : nil
                    )
                Text("Remember Me")
                    .font(.footnote)
                    .foregroundColor(Color(red: 0.584, green: 0.584, blue: 0.584))
            }
        })
    }
}

struct ToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        ToggleButton()
    }
}
