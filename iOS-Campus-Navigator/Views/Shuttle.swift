//
//  Shuttle.swift
//  iOS-Campus-Navigator
//
//  Created by Udana 004 on 2025-02-28.
//

import Foundation
import SwiftUI

struct Shuttle: View{
    
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                BackButton()
             }
            SearchField()
                .padding(.horizontal, 10)
                .navigationBarHidden(true)
            Text("Available shuttles:")
            RouteCard()
            RouteCard()
            RouteCard()
        }
    }
}

struct Shuttle_Previews: PreviewProvider{
    static var previews: some View{
        Shuttle()
    }
}
