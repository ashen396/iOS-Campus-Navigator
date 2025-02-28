//
//  NewsNEvents.swift
//  iOS-Campus-Navigator
//
//  Created by Gimantha 044 on 2025-02-28.
//

import Foundation
import SwiftUI

struct NewsNEvents: View{
    var body: some View{
        VStack{
            VStack{
                HStack{
                    BackButton()
                        .padding(.bottom, 10)
                    Spacer()
                }.frame(width: .infinity, height: 20, alignment: .top).padding()
                    .padding(.horizontal, 10)
                
                HStack{
                    SearchField(title: "Destination", frameWidth: 350)
                }.frame(width: .infinity, height: 20, alignment: .top)
            }.padding(.bottom, 20)
            
            Text("News & Events:")
                .font(.title2)
                .fontWeight(.bold)
            ScrollView{
                RouteCard(title: "Campus to Negombo", subtitle: "Navigation", depart: "05:30 AM", arival: "08:00 AM", imageName: "Map")
                    .padding(.bottom, 20)
                    .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.15), radius: 5, x: 10, y: 10)
                RouteCard(title: "Campus to Horana", subtitle: "Navigation", depart: "05:30 AM", arival: "08:00 AM", imageName: "Map")
                    .padding(.bottom, 20)
                    .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.15), radius: 5, x: 10, y: 10)
            }.frame(width: .infinity, height: .infinity, alignment: .center)
        }.navigationBarBackButtonHidden(true)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
}

struct NewsNEvents_Previews: PreviewProvider{
    static var previews: some View{
        NewsNEvents()
    }
}
