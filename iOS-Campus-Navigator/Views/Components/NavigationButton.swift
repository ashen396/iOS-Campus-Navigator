//
//  NavigationButton.swift
//  test-swiftui
//
//  Created by Mac on 2/26/25.
//

import Foundation
import SwiftUI

struct NavigationButton<Destination: View>: View{
    
    @State var title = "Button"
    var dest: Destination
    
    var body: some View{
        NavigationLink(
            destination: dest,
            label: {
            Color(red: 0.259, green: 0.624, blue: 1)
                .frame(width: 200, height: 30, alignment: .top)
                .padding(0)
                .cornerRadius(15)
                .overlay(
                    Text(title)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                )
                .shadow(color: Color(red: 0, green: 0.235, blue: 1, opacity: 0.5), radius: 2.5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 0.0)
        })
    }
}

//struct NavigationButton_Previews: PreviewProvider{
//    static var previews: some View{
//        NavigationButton()
//    }
//}
