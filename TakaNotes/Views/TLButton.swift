//
//  TLButton.swift
//  TakaNotes
//
//  Created by Takawakaji on 8/3/24.
//


import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            //action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding(10)
    }
}

#Preview {
    TLButton(title: "Value ", background: .pink) {
        //attempt
    }
}
