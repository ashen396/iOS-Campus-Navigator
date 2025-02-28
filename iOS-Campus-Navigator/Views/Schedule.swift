//
//  Schedule.swift
//  iOS-Campus-Navigator
//
//  Created by Gimantha 044 on 2025-02-28.
//

import Foundation
import SwiftUI

struct Schedule: View {
    @State private var date = Date()
    @State private var items:[Item] = [
        Item(isExpired: true, title: "iOS Lectures", description: "Attend lectures", starttime: "11:00 AM", endtime: "01:00 PM", colorIndex: 3),
        Item(isExpired: true, title: "iOS Lectures", description: "Attend lectures", starttime: "11:00 AM", endtime: "01:00 PM", colorIndex: 2),
        Item(isExpired: true, title: "iOS Lectures", description: "Attend lectures", starttime: "11:00 AM", endtime: "01:00 PM", colorIndex: 1),
        Item(isExpired: false, title: "iOS Lectures", description: "Attend lectures", starttime: "11:00 AM", endtime: "01:00 PM", colorIndex: 0),
        Item(isExpired: false, title: "iOS Lectures", description: "Attend lectures", starttime: "11:00 AM", endtime: "01:00 PM", colorIndex: 0)]
    
    @State private var topPos: Int = 0
    @State private var isExp: Bool = false
    @State private var notExp: Bool = false

    var body: some View {
        VStack {
            HStack{
                BackButton()
                DatePicker(" ", selection: $date, displayedComponents: [.date])
            }
            .padding(.horizontal, 10)
            
            Divider()
                .padding(.bottom, 20)
            
            VStack{
                ScheduleCard(item: items[0])
                    .padding(.top, CGFloat(topPos))
                    .padding(.bottom, 10)
                
                ScheduleCard(item: items[1])
                    .padding(.top, -80)
                    .padding(.bottom, 10)
                
                ScheduleCard(item: items[2])
                    .padding(.top, -80)
                    .padding(.bottom, 10)
                
                ScheduleCard(item: items[3])
                    .padding(.top, -80)
                    .padding(.bottom, 10)
                
                ScheduleCard(item: items[3])
                    .padding(.top, 0)
                    .padding(.bottom, 10)
                
                Spacer()
                AddTaskBtn()
            }.frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: 700, alignment: .top)
        }.navigationBarBackButtonHidden(true)
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        Schedule()
    }
}
