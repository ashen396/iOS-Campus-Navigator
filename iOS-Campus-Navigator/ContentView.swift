//
//  ContentView.swift
//  test-swiftui
//
//  Created by Mac on 2/18/25.
//

import SwiftUI
import CoreLocation
import CoreData

struct ContentView: View {

    
    var body: some View {

        Login()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}

