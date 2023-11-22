//
//  AllView.swift
//  paolo
//
//  Created by Bruno Paolo Passaro on 18/11/23.
//

import SwiftUI

struct AllView: View {
    
    @State var text = ""
    
    var contatto = contactList()
    
    var body: some View {
        
        NavigationStack{
            
            List {
                
                
                
                HStack{
                    
                    Image("frog")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 80)
                    
                    VStack(alignment: .leading) {
                        
                        Text("Bruno Paolo Passaro")
                            .font(.title2)
                            .bold()
                        
                        Text("My card")
                    }
                    
                    
                }
                
                ForEach(contatto.cont){ c in
                
                    
                    HStack {
                        
                        Text(c.name)
                        
                        Text(c.surname)
                    }
                    
                    
                }
                
                
                
            }   .navigationTitle("Contacts")
                .listStyle(.plain)
                .searchable(text: $text)
            
        }
    }
}

#Preview {
    AllView(
        contatto: contactList()
    )
}
