//
//  SyncContactsView.swift
//  ChatApp
//
//  Created by Tayami Rai on 26/07/2023.
//

import SwiftUI

struct SyncContactsView: View {
    
    @Binding var isOnboarding: Bool

    var body: some View {
        VStack{
            Spacer()
            Image("onboarding-all-set")
            
            
            Text("Awesome")
                .font(Font.titleText)
                .padding(.top, 32)
            
            Text("Start chatting with your friends")
                .font(Font.bodyParagraph)
                .padding(.top, 8)
            
            
            Spacer()
            
            Button {
                
                isOnboarding = false
                
            } label: {
                
                Text("Continue")
                
            }
            .foregroundColor(.white)
            .buttonStyle(OnboardingButtonStyle())
            .padding(.bottom, 87)
            
            
            
        }
        .padding(.horizontal)
    }
    
}

struct SyncContactsView_Previews: PreviewProvider {
    static var previews: some View {
        SyncContactsView(isOnboarding: .constant(true))
    }
}
