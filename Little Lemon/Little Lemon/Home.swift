//
//  Home.swift
//  Little Lemon
//
//  Created by Reiß, Sylvia on 12/17/23.
//

import SwiftUI
import CoreData

struct Home: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    let persistenceController = PersistenceController.shared
    
    var body: some View {
        
        TabView {
            
            Menu()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .tabItem {
                    Text("Menu")
                    Image(systemName: "list.dash")
                }
    
            UserProfile()
                .tabItem {
                    Text("Profile")
                    Image(systemName: "square.and.pencil")
                }
                
            
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
