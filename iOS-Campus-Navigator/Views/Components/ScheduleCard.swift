//
//  ScheduleCard.swift
//  iOS-Campus-Navigator
//
//  Created by Gimantha 044 on 2025-02-28.
//

import Foundation
import SwiftUI

struct ScheduleCard: View{
    
    var body: some View{
            Color(red: 0.52, green: 0.70, blue: 0.37)
            .frame(width: 350, height: 100, alignment: .center)
            .cornerRadius(10)
            .overlay(
                VStack{
                    VStack{
                        Text("11:30 AM - 01:00 PM")
                            .foregroundStyle(Color.white)
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .frame(width: 350, height: 20, alignment: .topLeading)
                            .padding(.leading, 20)
                        
                        Color(red: 0, green: 0, blue: 0, opacity: 0.2)
                            .frame(width: 320, height: 2)
                        
                        Text("iOS Lecture")
                            .foregroundStyle(Color.white)
                            .fontWeight(.bold)
                            .font(.title2)
                            .frame(width: 350, height: 20, alignment: .topLeading)
                            .padding(.leading, 20)
                    }
                }
            )
        
    }
}

struct ScheduleCard_Previews: PreviewProvider{
    static var previews: some View{
        ScheduleCard()
    }
}
