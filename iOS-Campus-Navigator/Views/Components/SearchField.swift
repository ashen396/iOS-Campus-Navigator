//
//  SearchField.swift
//  iOS-Campus-Navigator
//
//  Created by Udana 004 on 2025-02-27.
//

import Foundation
import SwiftUI


struct SearchField: View{
    
    @State var title = "Search"
    @State private var text = ""
    
    var body: some View{
        Color(white: 0, opacity: 0.06)
            .frame(width: 180, height: 40)
            .cornerRadius(10)
            .overlay(
                HStack{
                    TextField(title, text: $text)
                        .padding(.all, 10)
                        .padding(.leading, 40)
                        .foregroundColor(Color(white: 0, opacity: 0.6))
                        .cornerRadius(10)
                        .overlay(
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: .leading)
                                .opacity(0.2)
                                .padding(.trailing, 120)
                        )
                        .overlay(
                            (RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(Color(red: 0, green:0, blue:0, opacity: 0.1), lineWidth: 4)
                                .cornerRadius(10))
                        )
                }
            )
    }
}


struct SearchField_Previews: PreviewProvider{
    static var previews: some View{
        SearchField()
    }
}
