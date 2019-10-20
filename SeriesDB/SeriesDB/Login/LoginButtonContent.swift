//
//  LoginButtonContent.swift
//  SeriesDB
//
//  Created by Maria Eugênia Pereira Teixeira on 20/10/19.
//  Copyright © 2019 Maria Eugênia Pereira Teixeira. All rights reserved.
//

import SwiftUI

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.blue)
            .cornerRadius(15.0)
    }
}

struct LoginButtonContent_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonContent()
    }
}
