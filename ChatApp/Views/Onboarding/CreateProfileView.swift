//
//  CreateProfileView.swift
//  ChatApp
//
//  Created by Tayami Rai on 26/07/2023.
//

import SwiftUI

struct CreateProfileView: View {
    
    @Binding var currentStep: OnboardingStep
    
    @State var firstName = ""
    @State var lastName = ""


    var body: some View {
        VStack{
            Text("Set up profile")
                .font(Font.titleText)
                .padding(.top, 52)
            
            Text("Just a few more details to get started")
                .font(.bodyParagraph)
                .padding(.top, 12)
            
            Spacer()

            
            Button {
                
            } label: {
                
                ZStack{
                    Circle()
                        .foregroundColor(Color.white)
                    
                    Circle()
                        .stroke(Color("create-profile-border"),
                        lineWidth: 2)
                    
                    Image(systemName: "camera.fill")
                        .tint(Color("icons-input"))
                }
                .frame(width: 134, height: 134)
            }
            
            Spacer()

            TextField("First Name", text: $firstName)
                .textFieldStyle(CreateProfileTextFieldStyle())
            
            TextField("Last Name", text: $lastName)
                .textFieldStyle(CreateProfileTextFieldStyle())
            
            Spacer()
            
            Button {
                
                currentStep = .contacts
                
            } label: {
                Text("Next")
            }.buttonStyle(OnboardingButtonStyle())
                .padding(.bottom, 87)
            
        }
        .padding(.horizontal)    }
}

struct CreateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CreateProfileView(currentStep: .constant(.profile))
    }
}
