//
//  APButton.swift
//  project_5
//
//  Created by Atharv Choughule on 11/06/25.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color("brandPrimary"))
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Test Title")
}
