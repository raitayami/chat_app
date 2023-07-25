//
//  AuthViewModel.swift
//  ChatApp
//
//  Created by Tayami Rai on 25/07/2023.
//

import Foundation
import FirebaseAuth

class AuthViewModel{
    
    static func isUserLoggedIn() -> Bool {
        
        return Auth.auth().currentUser != nil
    }
    
    static func getLoggedInUserId() -> String {
        return Auth.auth().currentUser?.uid ?? ""
    }
    
    static func logout() {
        try? Auth.auth().signOut()
    }
}
