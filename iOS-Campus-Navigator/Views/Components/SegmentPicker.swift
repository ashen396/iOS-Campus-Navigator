//
//  SegmentPicker.swift
//  iOS-Campus-Navigator
//
//  Created by Gimantha 044 on 2025-02-27.
//

import Foundation
import SwiftUI

struct SegmentPicker: View {
    @State var title = "Combo Picker"
    @State var list = ["Item 1", "Item 2"]
    @State var pickedItem = "Item 1"
    
    var body: some View{
        Color(white: 0, opacity: 0)
            .frame(width: 280, height: 40)
            .cornerRadius(10)
            .overlay(
                Picker(pickedItem, selection: $pickedItem){
                    ForEach(list, id: \.self) { item in
                        Text(item)
                    }
                }.pickerStyle(PalettePickerStyle())
        )
    }
}

struct SegmentPicker_Previews: PreviewProvider{
    static var previews: some View{
        SegmentPicker()
    }
}
