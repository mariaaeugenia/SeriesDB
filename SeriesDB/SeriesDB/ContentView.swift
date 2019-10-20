//
//  ContentView.swift
//  SeriesDB
//
//  Created by Maria Eugênia Pereira Teixeira on 20/10/19.
//  Copyright © 2019 Maria Eugênia Pereira Teixeira. All rights reserved.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)


struct ContentView: View {
    
    @State var viewModel = LoginViewModel()
    @State var editingMode: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Image("login")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipped()
                    .padding(.bottom, 20)
                Text("SeriesDB")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 75)
                LoginTextField(login: $viewModel.email, editingMode: $editingMode)
                LoginSecureTextField(password: $viewModel.password)
                if viewModel.logginHasFaild {
                    Text(viewModel.errorMsg)
                        .offset(y: -10)
                        .foregroundColor(.red)
                }
                Button(action: {
                    self.viewModel.performLogin()
                }) {
                    LoginButtonContent()
                }
            }
            .padding()
            if !viewModel.logginHasFaild {
                Text("LOGIN WORKED!!!")
                    .font(.largeTitle)
                    .frame(width: 400, height: 500)
                    .background(Color.green)
                    .cornerRadius(20.0)
                    .foregroundColor(.white)
                    .animation(Animation.default)
            }
        }
        .offset(y: editingMode ? -100 : 0)
    }
        
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
