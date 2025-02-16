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
                .frame(width: 80, height: 80)
                .cornerRadius(20)
                .offset(offset)
                .gesture(DragGesture().onChanged({ value in
                    self.offset = CGSize(width: value.translation.width + mouseLoc.width, height: value.translation.height + mouseLoc.height)
                }).onEnded({ value in
                    self.mouseLoc = CGSize(width:  value.translation.width + (mouseLoc.width - offset.width), height: value.translation.height + (mouseLoc.height - offset.height))
                }))
        }
    }
}

#Preview {
    ContentView()
}
