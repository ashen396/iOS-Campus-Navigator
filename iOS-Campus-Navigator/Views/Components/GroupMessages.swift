//
//  GroupMessages.swift
//  iOS-Campus-Navigator
//
//  Created by Gimantha 044 on 2025-02-27.
//

import Foundation
import SwiftUI

struct GroupMessages: View{
    
    var body: some View {
        VStack{
            HStack{
                Color(Color.gray)
                    .frame(width: 30, height: 30, alignment: .leading)
                    .cornerRadius(15)
                    .padding(.top, 8)
                
                
                ChatBubble(title: "Hello", isSend: false)
            }
            
            HStack{
                ChatBubble(title: "Hello", isSend: true)
            }
        }
    }
}

struct GroupMessages_Previews: PreviewProvider{
    static var previews: some View{
        GroupMessages()
    }
}
