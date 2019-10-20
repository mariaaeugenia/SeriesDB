//
//  LoginViewModel.swift
//  SeriesDB
//
//  Created by Maria Eugênia Pereira Teixeira on 20/10/19.
//  Copyright © 2019 Maria Eugênia Pereira Teixeira. All rights reserved.
//

import Foundation


class LoginViewModel {
    
    var email = ""
    var password = ""
    var errorMsg = ""
    
    var logginHasFaild = true
    
    func performLogin() {
        if email == "email" && password == "1234" {
            errorMsg = ""
            logginHasFaild = true
        } else {
            errorMsg = "Login failed"
            logginHasFaild = false
        }
    }
}
