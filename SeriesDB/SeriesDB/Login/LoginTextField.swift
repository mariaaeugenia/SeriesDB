//
//  LoginTextField.swift
//  SeriesDB
//
//  Created by Maria Eugênia Pereira Teixeira on 20/10/19.
//  Copyright © 2019 Maria Eugênia Pereira Teixeira. All rights reserved.
//

import SwiftUI

struct LoginTextField: View {
    
    @Binding var login: String
    @Binding var editingMode: Bool
    
    var body: some View {
        TextField("Email", text: $login, onEditingChanged: { edit in
            self.editingMode = edit
        })
        .padding()
        .background(lightGreyColor)
        .cornerRadius(5.0)
        .padding(.bottom, 20)
    }
}

struct LoginSecureTextField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
        .padding()
        .background(lightGreyColor)
        .cornerRadius(5.0)
        .padding(.bottom, 20)
    }
    
}
