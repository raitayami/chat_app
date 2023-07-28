//
//  WelcomeView.swift
//  ChatApp
//
//  Created by Tayami Rai on 26/07/2023.
//

import SwiftUI

struct WelcomeView: View {
    
    @Binding var currentStep: OnboardingStep
    
    var body: some View {
        VStack{
            Spacer()
            Image("onboarding-welcome")
            
            
            Text("Welcome to Chat App")
                .font(Font.titleText)
                .padding(.top, 32)
            
            Text("Simple and fuss-free chat experience")
                .font(Font.bodyParagraph)
                .padding(.top, 8)
            
            
            Spacer()
            
            Button {
                
                currentStep = .phoneNumber
                
            } label: {
                
                
                Text("Get Started")
                
                
            }
            .foregroundColor(.white)
            .buttonStyle(OnboardingButtonStyle())
            
            
            Text("By tapping 'Get Started', you agree to our Privacy Policy")
                .font(Font.smallText)
                .padding(.top, 14)
                .padding(.bottom, 30)
            
            
            
        }
        .padding(.horizontal)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(currentStep: .constant(.welcome))
    }
}
