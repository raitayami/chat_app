//
//  RootView.swift
//  ChatApp
//
//  Created by Tayami Rai on 23/07/2023.
//

import SwiftUI

struct RootView: View {
    
    @State var selectedTab: Tabs = .contacts
    
    @State var isOnboarding = !AuthViewModel.isUserLoggedIn()
    
    var body: some View {
        VStack{
            Text("Hey")
            
            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
        }
        .fullScreenCover(isPresented: $isOnboarding) {
            
        } content: {
            OnboardingContainerView(isOnboarding: $isOnboarding)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
