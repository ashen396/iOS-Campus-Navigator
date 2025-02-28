//
//  ChatBubble.swift
//  iOS-Campus-Navigator
//
//  Created by Gimantha 044 on 2025-02-28.
//

import Foundation
import SwiftUI

struct ChatBubble: View{
    
    @State var title: String = "Message"
    @State var isSend: Bool = false
    
    func sendeMessage(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: CGRect(x: 8, y: 0, width: rect.width - 10, height: rect.height), cornerSize: CGSize(width: 16, height: 16))
            
        path.move(to: CGPoint(x: 90, y: 10))
        path.addQuadCurve(to: CGPoint(x: 105, y: rect.height - 0), control: CGPoint(x: 85, y: rect.height - 8))
        path.addQuadCurve(to: CGPoint(x: 10, y: rect.height - 20), control: CGPoint(x: 5, y: rect.height - 15))
        
        
        return path
    }
    
    func receiveMessage(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: CGRect(x: 8, y: 0, width: rect.width - 10, height: rect.height), cornerSize: CGSize(width: 16, height: 16))
            
        path.move(to: CGPoint(x: 10, y: 10))
        path.addQuadCurve(to: CGPoint(x: 5, y: rect.height), control: CGPoint(x: 85, y: rect.height - 8))
        path.addQuadCurve(to: CGPoint(x: 10, y: rect.height - 5), control: CGPoint(x: 5, y: rect.height + 2))
        
        
        return path
    }
    
    var body: some View{
        if(!isSend){
            HStack{
                Text(title)
                    .foregroundStyle(Color.white)
                    .frame(width: 100, height: 30, alignment: .top)
                    .padding(.top, 10)
                    .padding(.leading, 4)
                    .background(
                        receiveMessage(in: CGRect(x: 0, y: 0, width: 100, height: 100 - 60))
                    ).foregroundStyle(.gray)
            }.frame(width: 300, height: 100, alignment: .leading)
        }else{
            HStack{
                Text(title)
                    .foregroundStyle(Color.white)
                    .frame(width: 100, height: 100, alignment: .top)
                    .padding(.top, 10)
                    .padding(.leading, 4)
                    .background(
                        sendeMessage(in: CGRect(x: 0, y: 0, width: 100, height: 100 - 60))
                    ).foregroundStyle(.blue)
            }.frame(width: 350, height: 100, alignment: .trailing)
        }
    }
}

struct ChatBubble_Preview: PreviewProvider{
    static var previews: some View{
        ChatBubble()
    }
}
