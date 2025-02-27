//
//  Homepage.swift
//  test-swiftui
//
//  Created by Mac on 2/26/25.
//

import Foundation
import SwiftUI

struct Homepage: View {
    var body: some View{
        VStack{
            HStack{
                Text("Welcome, Ashen!")
                    .padding(.top, 10)
                    .font(.title2)
                
                Color(red: 0.851, green: 0.851, blue: 0.851)
                    .frame(width: 30, height: 30, alignment: .top)
                    .cornerRadius(15)
                    .padding(.top, 7)
                    .padding(.leading, 90)
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40, alignment: .center)
            
            CardView(image: "NewsNEvents", width: 300, height: 142, cornerRadius: 13, overlayOpacity: 0.6, title: "NEWS & EVENTS")
            
            CardView(image: "Navigation", width: 300, height: 142, cornerRadius: 13, overlayOpacity: 0.6, title: "NAVIGATION")
            
        }.navigationBarHidden(true)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View{
        Homepage()
    }
}
