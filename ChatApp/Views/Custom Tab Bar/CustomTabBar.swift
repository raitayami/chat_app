//
//  CustomTabBar.swift
//  ChatApp
//
//  Created by Tayami Rai on 24/07/2023.
//

import SwiftUI

enum Tabs: Int {
    case chats = 0
    case contacts = 1
}

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        
        HStack{
            Button {
                
                selectedTab = .chats
                
            } label: {
                
                TabBarButton(buttonText: "Chats",
                             imageName: "bubble.left",
                             isActive: selectedTab == .chats)
                                
            }
            .tint(Color("icons-secondary"))
            
            Button {
                
            } label: {
                VStack(alignment: .center, spacing: 4){
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                    
                    Text("New chat")
                        .font(Font.tabBar)
                }
            }
            .tint(Color("icons-primary"))
            
            
            Button {
                selectedTab = .contacts
            } label: {
                
                TabBarButton(buttonText: "Contacts",
                             imageName: "person",
                             isActive: selectedTab == .contacts)
                                
            }
            .tint(Color("icons-secondary"))
            
        }
        .frame(height: 82)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.chats))
    }
}
