//
//  HeaderView.swift
//  TakaNotes
//
//  Created by Takawakaji on 8/3/24.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
                
            
            VStack{
                Text(title)
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
                    .bold()
                Text(subtitle)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
            }
            .padding(.top, -30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 395)
        .offset(y: -150)
        
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: -15, background: .blue)
}
