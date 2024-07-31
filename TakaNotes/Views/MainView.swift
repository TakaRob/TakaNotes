/*
Views = what you see
 ViewModels = objects
 Models = core data

*/
//  ContentView.swift
//  TakaNotes
//
//  Created by Takawakaji on 7/30/24.
//
import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            LoginView()
        } else {
            LoginView()
        }
    }
    //this would allow you to switch between tabs of views. but we don't have those
   /* @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
            
        
    }*/
}

#Preview {
    MainView()
}
