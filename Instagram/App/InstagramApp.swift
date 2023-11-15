//
//  InstagramApp.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI
import Firebase


@main
struct InstagramApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}
