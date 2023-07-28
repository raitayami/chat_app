//
//  CreateProfileTextFieldStyle.swift
//  ChatApp
//
//  Created by Tayami Rai on 28/07/2023.
//

import Foundation
import SwiftUI

struct CreateProfileTextFieldStyle: TextFieldStyle{
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("input"))
                .cornerRadius(8)
                .frame(height: 46)
            
            configuration
                .font(Font.tabBar)
                .padding()
        }
    }
}
