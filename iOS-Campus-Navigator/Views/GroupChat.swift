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
        HStack{
            HStack{
                Image(systemName: "arrow.left")
                Text("Back")
            }
            
            Spacer()
            SearchField()
        }.padding(.horizontal, 10)
    }
}

struct GroupChat_Previews: PreviewProvider{
    static var previews: some View{
        GroupChat()
    }
}
