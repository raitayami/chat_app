//
//  VerificationView.swift
//  ChatApp
//
//  Created by Tayami Rai on 26/07/2023.
//

import SwiftUI

struct VerificationView: View {
    
    @Binding var currentStep: OnboardingStep
    
    @State var verificationCode = ""
    
    var body: some View {
        VStack{
            Text("Verification")
                .font(Font.titleText)
                .padding(.top, 52)
            
            Text("Enter the 6-digit verification code we sent to your device")
                .font(.bodyParagraph)
                .padding(.top, 12)
            
            ZStack{
                Rectangle()
                    .frame(height: 56)
                    .foregroundColor(Color("input"))
                
                HStack{
                    TextField("Enter verifcation code",
                              text: $verificationCode)
                    .font(Font.bodyParagraph)
                    
                    Spacer()
                    
                    Button {
                        verificationCode = ""
                    } label: {
                        Image(systemName: "multiply.circle.fill")
                        
                    }.frame(width: 19, height: 19)
                        .tint(Color("icons-input"))
                    
                    
                    
                }
                .padding()
            }
            .padding(.top, 34)
            
            Spacer()
            
            Button {
                
                currentStep = .profile
                
            } label: {
                Text("Next")
            }.buttonStyle(OnboardingButtonStyle())
                .padding(.bottom, 87)
            
        }
        .padding(.horizontal)
    }
}

struct VerificationView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationView(currentStep: .constant(.verification))
    }
}
