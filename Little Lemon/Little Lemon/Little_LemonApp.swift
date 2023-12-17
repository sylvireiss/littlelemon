//
//  Little_LemonApp.swift
//  Little Lemon
//
//  Created by Reiß, Sylvia on 12/17/23.
//

import SwiftUI

@main
struct Little_LemonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
