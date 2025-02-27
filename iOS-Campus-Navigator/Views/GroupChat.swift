//
//  GroupChat.swift
//  iOS-Campus-Navigator
//
//  Created by Udana 004 on 2025-02-27.
//

import Foundation
import SwiftUI

struct GroupChat: View{
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                BackButton()
                
                Spacer()
                SearchField()
                    .frame(width: 20, height: 40)
                    .padding(.trailing, 80)
            }.padding(.horizontal, 10)
                .navigationBarHidden(true)
            
            SegmentPicker(title: "ChatrPicker", list: ["Group Chat", "Location Chat"], pickedItem: "Group Chat")
                .frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: 0, alignment: .center)
                .padding(.top, 20)
            
            GroupMessages()
            
        }.frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .padding(.top, 20)
    }
}

struct GroupChat_Previews: PreviewProvider{
    static var previews: some View{
        GroupChat()
    }
}
