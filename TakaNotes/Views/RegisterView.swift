//
//  RegisterView.swift
//  TakaNotes
//
//  Created by Takawakaji on 8/3/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Register", subtitle: "Start Organizing Todos", angle: 15, background: .orange)
                .offset(y: 0)
            
            Form{
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                   
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    background: .green
                ) {
                    viewModel.register()
                    //Attempt Registration
                }
                
            }
            .offset(y: -20)
            Spacer()
            
            
        }
       
    }
}

#Preview {
    RegisterView()
}
