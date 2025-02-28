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
            
            HStack{
                SegmentPicker(title: "ChatPicker", list: ["Group Chat", "Location Chat"], pickedItem: "Group Chat")
                    .frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: 0, alignment: .center)
                    .padding(.top, 20)
            }
            HStack{
                GroupMessages()
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 400, alignment: .top)
            .padding(.horizontal, 10)
            
            VStack{
                HStack{
                    SegmentPicker(title: "ResponsePicker", list: ["Requests", "Responses"], pickedItem: "Requests")
                        .frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: 0, alignment: .center)
                        .padding(.top, 20)
                }
                
                VStack{
                    HStack{
                        Button(action: {
                            print("Available")
                        }, label: {
                            ChipButton(width: 120, buttonText: "+ Available")
                        })
                        
                        ChipButton(width: 120, buttonText: "+ Unvailable")
                        ChipButton(width: 100, buttonText: "+ Lab 01")
                    }.padding(.top, 40)
                    
                    HStack{
                        ChipButton(width: 180, buttonText: "+ Location Crowded")
                        ChipButton(width: 140, buttonText: "+ Seminar Hall")
                    }.padding(.top, 10)
                    
                    HStack{
                        InputField(title: "Type Message")
                            .padding(.top, 40)
                        
                        Image(systemName: "arrowtriangle.right.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40, alignment: .center)
                            .padding(.top, 40)
                            .padding(.leading, 20)
                    }
                }
            }
            
        }.frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .padding(.top, 20)
    }
}

struct GroupChat_Previews: PreviewProvider{
    static var previews: some View{
        GroupChat()
    }
}
