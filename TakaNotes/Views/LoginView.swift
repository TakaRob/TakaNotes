//
//  LoginView.swift
//  TakaNotes
//
//  Created by Takawakaji on 8/3/24.


//switched navigationview to navigationstack b/c the previous created a sidebar

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: -15 , background: .pink)
                    .offset(y: 40)
                
                
                //LoginForm
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        //Attempt log in
                        viewModel.login()
                    }
                    
                }
                .offset(y: -20)
                
                
                //Create Account
                VStack{
                    Text("First Time?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                    
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

 #Preview {
     LoginView()
 }
