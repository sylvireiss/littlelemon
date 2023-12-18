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
            Text("Personal Information").font(.title)
            Image("Profile").resizable()
                .frame(width: 200, height: 200)
            Text(firstname ?? "First Name").foregroundColor(.gray).padding(5).font(.title2)
            Text(lastname ?? "Last Name").foregroundColor(.gray).padding(5).font(.title2)
            Text(email ?? "E-Mail").foregroundColor(.gray).padding(5).font(.title2)
            Spacer()
            Button("Logout", action: logout).padding()
                .frame(maxWidth: .infinity)
                .background(Color("PrimaryGreen"))
                .cornerRadius(10)
                .foregroundColor(Color("HighlightGray"))
        }.padding()
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
