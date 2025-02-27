//
//  CardView.swift
//  test-swiftui
//
//  Created by Mac on 2/27/25.
//

import Foundation
import SwiftUI

struct CardView: View{
    @State var image: String = ""
    @State var width: CGFloat = 0.0
    @State var height: CGFloat = 0.0
    @State var cornerRadius: CGFloat = 0.0
    @State var overlayOpacity: Double = 0.0
    @State var title: String = ""
    
    var body: some View{
        Image(image)
            .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
            .frame(width: width, height: height, alignment: .top)
            .cornerRadius(cornerRadius)
            .overlay(
                Color(white: 0, opacity: overlayOpacity)
                    .cornerRadius(cornerRadius)
                    .overlay(
                        Text(title)
                            .foregroundColor(Color.white)
                            .font(.title)
                            .fontWeight(.bold)
                    ).frame(width: width, height: height, alignment: .top)
            )
    }
}

struct CardView_Preview: PreviewProvider{
    static var previews: some View{
        CardView()
    }
}
