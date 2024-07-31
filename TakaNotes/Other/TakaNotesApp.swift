//
//  TakaNotesApp.swift
//  TakaNotes
//
//  Created by Takawakaji on 7/30/24.
//
import FirebaseCore
import SwiftUI

@main
struct TakaNotesApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
