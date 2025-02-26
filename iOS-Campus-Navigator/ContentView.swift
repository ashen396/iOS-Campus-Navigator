//
//  ContentView.swift
//  test-swiftui
//
//  Created by Mac on 2/18/25.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
//    @State private var mouseLoc = CGSize.zero
//    @State private var offset = CGSize.zero
//    @State private var size = CGSize.zero
//    @StateObject private var locManager = LocationManager()
    
    var body: some View {
//        GeometryReader { geo in
//        ZStack {
//                    Rectangle()
//                        .fill(Color(red: 236/255.0, green: 236/255.0, blue: 236/255.0))
//                        .onAppear(perform: {
//                            size = geo.size
//                        })
//
//                    ZStack{
//                        AddArea(title: "Lecture Hall 01", backgroundColor: Color(red: 247/255.0, green: 247/255.0, blue: 247/255.0), frameW: 221, frameH: 110, borderColor: Color(red: 186/255.0, green: 186/255.0, blue: 186/255.0), rotateDeg: -90, posX: 70, posY: 500)
//
//                        AddArea(title: "Lecture Hall 02", backgroundColor: Color(red: 247/255.0, green: 247/255.0, blue: 247/255.0), frameW: 151, frameH: 110, borderColor: Color(red: 186/255.0, green: 186/255.0, blue: 186/255.0), rotateDeg: -90, posX: 70, posY: 300)
//
//                        AddArea(title: "Lecture Hall 03", backgroundColor: Color(red: 247/255.0, green: 247/255.0, blue: 247/255.0), frameW: 194, frameH: 110, borderColor: Color(red: 186/255.0, green: 186/255.0, blue: 186/255.0), rotateDeg: -90, posX: 70, posY: 110)
//
//                        AddArea(title: "Lecture Hall 04", backgroundColor: Color(red: 247/255.0, green: 247/255.0, blue: 247/255.0), frameW: 192, frameH: 151, borderColor: Color(red: 186/255.0, green: 186/255.0, blue: 186/255.0), rotateDeg: -90, posX: 250, posY: 150)
//
//                        AddArea(title: "Lecture Hall 05", backgroundColor: Color(red: 247/255.0, green: 247/255.0, blue: 247/255.0), frameW: 151, frameH: 110, borderColor: Color(red: 186/255.0, green: 186/255.0, blue: 186/255.0), rotateDeg: 0, posX: 250, posY: 318)
//
//                        AddArea(title: "Lecture Hall 06", backgroundColor: Color(red: 247/255.0, green: 247/255.0, blue: 247/255.0), frameW: 235, frameH: 151, borderColor: Color(red: 186/255.0, green: 186/255.0, blue: 186/255.0), rotateDeg: -90, posX: 450, posY: 128)
//
//                        AddArea(title: "Lecture Hall 07", backgroundColor: Color(red: 245/255.0, green: 100/255.0, blue: 100/255.0), frameW: 185, frameH: 110, borderColor: Color(red: 186/255.0, green: 186/255.0, blue: 186/255.0), rotateDeg: 0, posX: 435, posY: 318)
//
//                        AddArea(title: "Lecture Hall 08", backgroundColor: Color(red: 247/255.0, green: 247/255.0, blue: 247/255.0), frameW: 350, frameH: 100, borderColor: Color(red: 186/255.0, green: 186/255.0, blue: 186/255.0), rotateDeg: 0, posX: 350, posY: 440)
//
//                        AddArea(title: "Lecture Hall 09", backgroundColor: Color(red: 247/255.0, green: 247/255.0, blue: 247/255.0), frameW: 350, frameH: 100, borderColor: Color(red: 186/255.0, green: 186/255.0, blue: 186/255.0), rotateDeg: 0, posX: 350, posY: 560)
//
//                        AddArea(title: "Balcony", backgroundColor: Color(red: 107/255.0, green: 107/255.0, blue: 107/255.0), frameW: 357, frameH: 92, borderColor: Color(red: 186/255.0, green: 186/255.0, blue: 186/255.0), rotateDeg: 0, posX: 192, posY: -50)
//                    }
//                }
//            HallPath()
//                .stroke(Color.green, lineWidth: 25)
//                .offset(offset)
//            UserLocation(locManager: locManager)
//                .offset(offset)
//        }.ignoresSafeArea(edges: .top)
//        .gesture(DragGesture().onChanged({ value in
//            self.offset =
//            MapDragLoc(width: value.translation.width, height: value.translation.height)
//        }).onEnded({ value in
//            self.mouseLoc = CGSize(width:  offset.width, height: offset.height)
//        }))
        Login()
    }
}
    
//    func UserLocation(locManager: LocationManager) -> some View{
//        let locX = 320 - locManager.longitude
//        let locY = 945 - locManager.latitude
//        return Circle()
//            .size(width: 35, height: 35)
//            .fill(Color.purple)
//            .position(x: CGFloat(locX), y: CGFloat(locY))
//    }
//
//    struct HallPath: Shape{
//        func path(in rect: CGRect) -> Path {
//            var path = Path()
//            path.move(to: CGPoint(x: 150, y: 640))
//            path.addLine(to: CGPoint(x: 150, y: 25))
//            path.addLine(to: CGPoint(x: 350, y: 25))
//            path.addLine(to: CGPoint(x: 350, y: 250))
//            return path
//        }
//    }
//
//    func AddArea(title: String, backgroundColor: Color, frameW: CGFloat, frameH: CGFloat, borderColor: Color, rotateDeg: Double, posX: CGFloat, posY: CGFloat) -> some View{
//
//        return Text(title)
//            .padding()
//            .background(
//                Rectangle()
//                    .fill(backgroundColor)
//                    .frame(width: frameW, height: frameH)
//                    .border(borderColor, width: 2)
//                    .cornerRadius(5)
//            )
//            .rotationEffect(.init(degrees: Double(rotateDeg)))
//            .offset(offset)
//            .position(CGPoint(x: posX, y: posY))
//    }
//
//    func MapDragLoc(width: CGFloat, height: CGFloat) -> CGSize{
//        var loc = offset
//        let viewW = (-size.width / 2)
//        var mouseW = (width + mouseLoc.width)
//        var mouseH = (height + mouseLoc.height)
//
//        if(mouseW > 0){
//            mouseW = 0
//        }
//
//        if(mouseW < viewW){
//            mouseW = viewW
//        }
//
//        if(mouseH > 140){
//            mouseH = 140
//        }
//
//        if(mouseH < 0){
//            mouseH = 0
//        }
//
//        if ((0 > mouseW) && ((-size.width / 2) < mouseW)) ||
//            ((140 > mouseH) && (0 < mouseH)){
//         loc = CGSize(width: mouseW, height: mouseH)
//        }
//
//        return loc
//    }
//}

   

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
