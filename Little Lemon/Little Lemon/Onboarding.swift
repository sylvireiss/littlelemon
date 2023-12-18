//
//  Onboarding.swift
//  Little Lemon
//
//  Created by Reiß, Sylvia on 12/17/23.
//

import SwiftUI

let kFirstName = "first name key"
let kLastName = "last name key"
let kEMail = "email key"
let kIsLoggedIn = "kIsLoggedIn"

struct Onboarding: View {
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var isLoggedIn = false
    
    var body: some View {
        NavigationView{
            VStack {
                
                HeaderHeroView()
                
                VStack(
                    alignment: .center,
                    spacing: 10
                ){
                    NavigationLink("", destination: Home(), isActive: $isLoggedIn)
                    TextField("First Name", text: $firstname).padding().border(.secondary)
                    TextField("Last Name", text: $lastname).padding().border(.secondary)
                    TextField("E-Mail", text: $email).padding().border(.secondary)
                    Spacer()
                    Button(action: signIn) {
                        Text("Register")
                    }.padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("PrimaryGreen"))
                        .cornerRadius(10)
                        .foregroundColor(Color("HighlightGray"))
                    
                }.padding(40)
                    .onAppear(
                        perform: {if UserDefaults.standard.bool(forKey: kIsLoggedIn){
                            isLoggedIn = true
                        }}
                        
                        
                    )
            }
        }
        
    }
    
    func signIn(){
        if (!(firstname.isEmpty || lastname.isEmpty || email.isEmpty)){
            UserDefaults.standard.set(firstname, forKey: kFirstName)
            UserDefaults.standard.set(lastname, forKey: kLastName)
            UserDefaults.standard.set(email, forKey: kEMail)
            UserDefaults.standard.set(true, forKey: kIsLoggedIn)
            isLoggedIn = true;
            
        }
    }

}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
