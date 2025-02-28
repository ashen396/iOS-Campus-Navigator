//
//  EventCard.swift
//  iOS-Campus-Navigator
//
//  Created by Udana 004 on 2025-02-28.
//

import Foundation
import SwiftUI

struct CustomRoundedCorners: Shape {
    var radius: CGFloat
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct EventCard: View {
    
    @State var title = "Title"
    @State var subtitle = "Title"
    @State var venue = "00:00 AM"
    
    var body: some View{
        VStack{
            Color(white: 0, opacity: 0.06)
                .frame(width: 300, height: 100)
                .clipShape(CustomRoundedCorners(radius: 10, corners: [.topLeft, .topRight]))
            VStack{
                Text(title).font(.system(size:20)).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Fesitval").font(.system(size:14)).fontWeight(.thin)
                    .padding(.bottom,5).frame(maxWidth: .infinity, alignment: .leading)
                HStack{
                    HStack{
                        Text("Venue:").font(.system(size:12)).fontWeight(.thin)
                        Text(venue).font(.system(size:12)).fontWeight(.regular)
                    }
                    Spacer()
                }
                
            }.padding(.horizontal)
                .padding(.bottom,10)
       }.overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
    )
        .frame(width: 300)
        .background(Color.white)
        .overlay(RoundedRectangle(cornerRadius: 10)
        .stroke(Color.gray.opacity(0.3), lineWidth:1)).background(Color.gray.opacity(0.1).cornerRadius(10))
        
        
    }
}

struct EventCard_Preview: PreviewProvider {
    static var previews: some View{
        EventCard()
    }
}
