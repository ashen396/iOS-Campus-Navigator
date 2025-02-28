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
                    .font(.title)
                    .fontWeight(.bold)
                
                Image("UserIcon")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .top)
                    .cornerRadius(15)
                    .padding(.top, 7)
                    .padding(.leading, 90)
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40, alignment: .center)
                .padding(.top, 40)
                .padding(.bottom, 20)
            
            CardView(image: "NewsNEvents", width: 358, height: 172, cornerRadius: 13, overlayOpacity: 0.6, title: "NEWS & EVENTS", borderLineWidth: 4, overlayImage: "NewsEventsIcon", overlaySize: 50)
                .padding(.bottom, 10)
            
            NavigationLink(destination: Map()){
                CardView(image: "Navigation", width: 358, height: 221, cornerRadius: 13, overlayOpacity: 0.6, title: "NAVIGATION", borderLineWidth: 4, overlayImage: "NavigationIcon", overlaySize: 50)
            }
            
            HStack{
                NavigationLink(destination: GroupChat()){
                    CardView(width: 160, height: 100, cornerRadius: 13, overlayOpacity: 0.6, title: "CHAT", borderLineWidth: 2, overlayImage: "ChatIcon", overlaySize: 40, colors: [Color(red: 0.0, green: 0.59, blue: 0.97), Color(red: 0.26, green: 0.50, blue: 0.85)])
                        .padding(.trailing, 20)
                }
                
                NavigationLink(destination: Schedule()){
                    CardView(width: 160, height: 100, cornerRadius: 13, overlayOpacity: 0.6, title: "SCHEDULE", borderLineWidth: 2, overlayImage: "ScheduleIcon", overlaySize: 40, colors: [Color(red: 0.81, green: 0.4, blue: 0.38), Color(red: 0.67, green: 0.34, blue: 0.33)])
                }
            }.padding(.top, 10)
            
            HStack{
                CardView(width: 160, height: 100, cornerRadius: 13, overlayOpacity: 0.6, title: "NAVIGATION", borderLineWidth: 2, overlayImage: "ShuttleIcon", overlaySize: 40, colors: [Color(red: 0.83, green: 0.58, blue: 0.20), Color(red: 0.66, green: 0.46, blue: 0.15)])
                    .padding(.trailing, 20)
                
                CardView(width: 160, height: 100, cornerRadius: 13, overlayOpacity: 0.6, title: "NAVIGATION", borderLineWidth: 2, overlayImage: "GuidelinesIcon", overlaySize: 40, colors: [Color(red: 0.36, green: 0.76, blue: 0.34), Color(red: 0.29, green: 0.63, blue: 0.28)])
            }.padding(.top, 10)
            
        }.navigationBarHidden(true)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View{
        Homepage()
    }
}
