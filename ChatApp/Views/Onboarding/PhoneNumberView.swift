//
//  PhoneNumberView.swift
//  ChatApp
//
//  Created by Tayami Rai on 26/07/2023.
//

import SwiftUI

struct PhoneNumberView: View {
    
    @Binding var currentStep: OnboardingStep

    
    @State var phoneNumber = ""
    
    var body: some View {
        
        VStack{
            Text("Verification")
                .font(Font.titleText)
                .padding(.top, 52)
            
            Text("Enter you mobile number below. We will send you a verifcation code after")
                .font(.bodyParagraph)
                .padding(.top, 12)
            
            ZStack{
                Rectangle()
                    .frame(height: 56)
                    .foregroundColor(Color("input"))
                
                HStack{
                    TextField("e.g . +1 613 515 0123",
                              text: $phoneNumber)
                    .font(Font.bodyParagraph)
                    
                    Spacer()
                    
                    Button {
                        phoneNumber = ""
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
                currentStep = .verification
            } label: {
                Text("Next")
            }.buttonStyle(OnboardingButtonStyle())
                .padding(.bottom, 87)
            
        }
        .padding(.horizontal)
        
    }
}

struct PhoneNumberView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumberView(currentStep: .constant(.phoneNumber))

    }
}
