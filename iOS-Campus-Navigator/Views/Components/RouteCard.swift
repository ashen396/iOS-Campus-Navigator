//
//  RouteCard.swift
//  iOS-Campus-Navigator
//
//  Created by Udana 004 on 2025-02-28.
//

import Foundation
import SwiftUI

struct RouteCard: View {
    
    @State var title = "Title"
    @State var subtitle = "Title"
    @State var depart = "00:00 AM"
    @State var arival = "02:00 AM"
    
    var body: some View{
        VStack{
            Color(white: 0, opacity: 0.06)
                .frame(width: 280, height: 150)
                .cornerRadius(10)
            VStack{
                Text(title).font(.system(size:20)).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Campus Navigator").font(.system(size:14)).fontWeight(.thin)
                    .padding(.bottom,10).frame(maxWidth: .infinity, alignment: .leading)
                HStack{
                    HStack{
                        Text("Depart:").font(.system(size:12)).fontWeight(.thin)
                        Text(depart).font(.system(size:12)).fontWeight(.regular)
                    }
                    Spacer()
                    HStack{
                        Text("Arrival:").font(.system(size:12)).fontWeight(.thin)
                        Text(arival).font(.system(size:12)).fontWeight(.regular)
                    }
                }
                
            }.padding()
       }.overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
    )
        .frame(width: 280)
        .background(Color.white)
        .overlay(RoundedRectangle(cornerRadius: 10)
        .stroke(Color.gray.opacity(0.3), lineWidth:1)).background(Color.gray.opacity(0.1).cornerRadius(10))
        
        
    }
}

struct RouteCard_Preview: PreviewProvider {
    static var previews: some View{
        RouteCard()
    }
}
