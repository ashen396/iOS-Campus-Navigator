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
    @State var borderLineWidth: CGFloat = 0.0
    @State var overlayImage: String = ""
    @State var overlaySize: CGFloat = 0.0
    @State var colors: Array = [Color.white]
    
    var body: some View{
        if(!image.isEmpty){
            Image(image)
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                .frame(width: width, height: height, alignment: .top)
                .cornerRadius(cornerRadius)
                .overlay(
                    Color(white: 0, opacity: overlayOpacity)
                        .cornerRadius(cornerRadius)
                        .overlay(
                            VStack(alignment: .center){
                                Image(overlayImage)
                                    .resizable()
                                    .frame(width: overlaySize, height: overlaySize, alignment: .center)
                                
                                Text(title)
                                    .foregroundColor(Color.white)
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                        ).frame(width: width, height: height, alignment: .top)
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(.white, lineWidth: 4)
                            .cornerRadius(10))
                        .shadow(radius: 5)
                )
        }else{
            LinearGradient(colors: colors, startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 0, y: 1))
                .frame(width: width, height: height, alignment: .top)
                .cornerRadius(cornerRadius)
                .overlay(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(.white, lineWidth: borderLineWidth)
                    .overlay(
                        VStack{
                            Image(overlayImage)
                                .resizable()
                                .frame(width: overlaySize, height: overlaySize, alignment: .center)
                            
                            Text(title)
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                        })
                .cornerRadius(10))
                .shadow(radius: 5)
        }
    }
}

struct CardView_Preview: PreviewProvider{
    static var previews: some View{
        CardView()
    }
}
