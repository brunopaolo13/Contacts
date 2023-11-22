//
//  paoloApp.swift
//  paolo
//
//  Created by Bruno Paolo Passaro on 18/11/23.
//

import SwiftUI

@main
struct paoloApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView {
                
                FavouritesView()
                    .tabItem {
                        Label("Favourites", systemImage: "star.fill")
                    }
                
                RecentsView()
                    .tabItem {
                        Label("Recents", systemImage: "clock.fill")
                    }
                
                ContactsView()
                    .tabItem {
                        Label("Contacts", systemImage: "person.circle.fill")
                    }
                
                KeypadView()
                    .tabItem {
                        Label("Keypad", systemImage: "circle.grid.3x3.fill")
                    }
                
                VoicemailView()
                    .tabItem {
                        Label("Voicemail", systemImage: "recordingtape")
                    }
                
            }
            
        }
    }
}

//
