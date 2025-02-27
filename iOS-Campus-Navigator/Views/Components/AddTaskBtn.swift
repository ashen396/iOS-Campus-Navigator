//
//  BackButton.swift
//  iOS-Campus-Navigator
//
//  Created by Gimantha 044 on 2025-02-27.
//

import Foundation
import SwiftUI

struct Item {
    let uuid = UUID()
    let value: String
}
struct AddTaskBtn: View {
    @State private var items = [Item]()
    
    var body: some View {
        ZStack {
            List(self.items, id: \.uuid) { item in
                Text(item.value)
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        self.items.append(Item(value: "Item"))
                    }, label: {
                        Text("+")
                            .font(.system(size: 64).bold())
                        .frame(width: 56, height: 49)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 7)
                    })
                    .background(Color.blue)
                    .cornerRadius(38.5)
                    .padding()
                    .shadow(color: Color.black.opacity(0.3),
                            radius: 3,
                            x: 3,
                            y: 3)
                }
            }
        }
    }

}




struct AddTaskBtn_Previews: PreviewProvider{
    static var previews: some View{
        AddTaskBtn()
    }
}
