//
//  GroupMessages.swift
//  iOS-Campus-Navigator
//
//  Created by Gimantha 044 on 2025-02-27.
//

import Foundation
import SwiftUI

struct GroupMessages: View{
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        

            // Sender's chat bubble (tail on the right)
//            path.addRoundedRect(in: CGRect(x: 0, y: 0, width: rect.width - 10, height: rect.height), cornerSize: CGSize(width: 16, height: 16))
//            
//            path.move(to: CGPoint(x: rect.width - 10, y: rect.height - 10))
//            path.addQuadCurve(to: CGPoint(x: rect.width, y: rect.height), control: CGPoint(x: rect.width - 5, y: rect.height - 5))
//            path.addQuadCurve(to: CGPoint(x: rect.width - 10, y: rect.height - 5), control: CGPoint(x: rect.width - 5, y: rect.height + 2))

            // Receiver's chat bubble (tail on the left)
            path.addRoundedRect(in: CGRect(x: 8, y: 0, width: rect.width - 10, height: rect.height), cornerSize: CGSize(width: 16, height: 16))
            
            path.move(to: CGPoint(x: 10, y: 10))
            path.addQuadCurve(to: CGPoint(x: 5, y: rect.height), control: CGPoint(x: 85, y: rect.height - 8))
            path.addQuadCurve(to: CGPoint(x: 10, y: rect.height - 5), control: CGPoint(x: 5, y: rect.height + 2))
        
        
        return path
    }
    
    var body: some View {
            HStack(alignment: .bottom, spacing: 8) {


                Text("Hello")
                    .padding()
                    .background(
                        path(in: CGRect(x: 0, y: 0, width: 100, height: 59))
                    ).foregroundStyle(.blue)
            }
            .padding(.horizontal)
        }
}

struct GroupMessages_Previews: PreviewProvider{
    static var previews: some View{
        GroupMessages()
    }
}
