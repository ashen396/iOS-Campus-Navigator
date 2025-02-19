//
//  ContentView.swift
//  iOS-Campus-Navigator
//
//  Created by Gimantha 044 on 2025-02-07.
//

import SwiftUI

struct ContentView: View {
    @State private var mouseLoc = CGSize.zero
    @State private var offset = CGSize.zero
    
    var columns: [GridItem] = [GridItem(.fixed(50)), GridItem(.fixed(50))]
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .gesture(DragGesture().onChanged({ value in
                    self.offset = CGSize(width: value.translation.width + mouseLoc.width, height: value.translation.height + mouseLoc.height)
                    MapSize(width: value.translation.width, height: value.translation.height)
                }).onEnded({ value in
                    self.mouseLoc = CGSize(width:  offset.width, height: offset.height)
                }))
            
            ZStack{
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
                    .offset(offset)
                    .padding(20)
                    .position(CGPoint(x: 50, y: 50))
                
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
                    .offset(offset)
                    .padding(20)
                    .position(CGPoint(x: 180, y: 80))
                
                Rectangle()
                    .fill(.blue)
                    .frame(width: 80, height: 80)
                    .cornerRadius(20)
                    .offset(offset)
            }
        }
    }
    
    func MapSize(width: CGFloat, height: CGFloat){
        print(width, height)
    }
}

#Preview {
    ContentView()
}
