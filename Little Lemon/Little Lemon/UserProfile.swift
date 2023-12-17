//
//  UserProfile.swift
//  Little Lemon
//
//  Created by Reiß, Sylvia on 12/17/23.
//

import SwiftUI

struct UserProfile: View {
    let firstname = UserDefaults.standard.string(forKey: kFirstName)
    let lastname = UserDefaults.standard.string(forKey: kLastName)
    let email = UserDefaults.standard.string(forKey: kEMail)
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            Text("Personal Information")
            Image("user").resizable()
                .frame(width: 100, height: 100)
            Text(firstname ?? "")
            Text(lastname ?? "")
            Text(email ?? "")
            Button("Logout", action: logout)
            Spacer()
        }
    }
    
    func logout(){
        UserDefaults.standard.set(false, forKey: kIsLoggedIn)
        self.presentation.wrappedValue.dismiss()
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
