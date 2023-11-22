//
//  ContentView.swift
//  paolo
//
//  Created by Bruno Paolo Passaro on 18/11/23.
//

import SwiftUI

struct ContactsView: View {
    
    var body: some View {
        
        NavigationStack{
            
            List {
                
                HStack {
                    
                    Image(systemName: "person.3")
                        .foregroundStyle(Color.blue)
                    
                    NavigationLink("All Contacts", destination: AllView())
                }
                
            }   .navigationTitle("Lists")
                
        }
        
    }
    
}

#Preview {
    ContactsView()
}
