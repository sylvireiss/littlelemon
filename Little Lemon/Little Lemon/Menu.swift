//
//  Menu.swift
//  Little Lemon
//
//  Created by Reiß, Sylvia on 12/17/23.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack{
            Text("Little Lemon Restaurant");
            Text("Chicago");
            Text("This is the Little Lemon Restaurant App which enables you to order amazing mediterranean food online!")
            List{
                
            }
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
