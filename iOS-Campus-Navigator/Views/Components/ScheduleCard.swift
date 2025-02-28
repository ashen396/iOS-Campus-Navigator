//
//  ScheduleCard.swift
//  iOS-Campus-Navigator
//
//  Created by Gimantha 044 on 2025-02-28.
//

import Foundation
import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    var isExpired: Bool = true
    var title: String = "Study"
    var description: String = "Study iOS"
    var starttime: String = "11:30 AM"
    var endtime: String = "01:00 PM"
    var colorIndex: Int = 0
}

struct ScheduleCard: View{
    
    @State var item: Item = Item(isExpired: false, title: "title", description: "description", colorIndex: 0)
    @State private var colors: Array = [Color(red: 0.47, green: 0.71, blue: 0.32), Color(red: 0.92, green: 0.29, blue: 0.29), Color(red: 0.81, green: 0.27, blue: 0.27), Color(red: 0.64, green: 0.29, blue: 0.28)]
    
    var body: some View{
        Color(colors[item.colorIndex])
            .frame(width: 350, height: 100, alignment: .center)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(white: 1, opacity: 0.8), lineWidth: 1)
            )
            .overlay(
                VStack{
                    VStack{
                        Text(!item.isExpired ? item.starttime + "-" + item.endtime : item.title)
                            .foregroundStyle(Color.white)
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .frame(width: 350, height: 20, alignment: .topLeading)
                            .padding(.leading, 20)
                        
                        Color(red: 0, green: 0, blue: 0, opacity: 0.2)
                            .frame(width: 330, height: 2)
                        
                        HStack{
                            if(!item.isExpired){
                            VStack{
                                Text(item.title)
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.bold)
                                    .font(.title2)
                                    .frame(width: 350, height: 20, alignment: .topLeading)
                                    .padding(.leading, 20)
                                
                                Text(item.description)
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.light)
                                    .font(.headline)
                                    .frame(width: 350, height: 20, alignment: .topLeading)
                                    .padding(.leading, 20)
                            }.frame(width: 205, height: 20, alignment: .leading)
                            
                            
                                Color(Color.blue)
                                    .frame(width: 140, height: 30)
                                    .cornerRadius(20)
                                    .overlay(
                                        Text("Get Directions")
                                            .foregroundStyle(Color.white)
                                            .font(.subheadline)
                                            .fontWeight(.bold)
                                    )
                            }
                        }.frame(width: 370, height: 40, alignment: .leading)
                    }
                }
            ).shadow(radius: 5, x: 0, y: 0)
    }
}

struct ScheduleCard_Previews: PreviewProvider{
    static var previews: some View{
        ScheduleCard()
    }
}
