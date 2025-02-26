//
//  ComboPicker.swift
//  test-swiftui
//
//  Created by Mac on 2/26/25.
//

import Foundation
import SwiftUI

struct ComboPicker: View{
    
    @State var title = "Combo Picker"
    @State var list = ["Item 1", "Item 2"]
    @State private var pickedItem = "Select"
    
    var body: some View{
        Color(white: 0, opacity: 0.06)
            .frame(width: 280, height: 40)
            .cornerRadius(10)
            .overlay(
                HStack{
                    Text(title)
                        .foregroundColor(Color(white: 0, opacity: 0.2))
                        .frame(width: 120, height: 40, alignment: .leading)
                    
                Picker(pickedItem, selection: $pickedItem){
                    ForEach(list, id: \.self) { item in
                        Text(item)
                    }
                }.pickerStyle(MenuPickerStyle())
                .foregroundColor(Color(red: 0.2, green: 0.6, blue: 1))
                .frame(width: 130, height: 40, alignment: .trailing)
                }.frame(width: 280, height: 40, alignment: .center)
        )
    }
}

struct ComboPicker_Previews: PreviewProvider{
    static var previews: some View{
        ComboPicker()
    }
}
