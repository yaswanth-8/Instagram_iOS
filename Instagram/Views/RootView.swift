//
//  RootView.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI

enum ContentView {
    case home
    case profile
}

struct RootView: View {
    @State private var selectedView: ContentView = .home
    var body: some View {
        VStack {
            switch selectedView {
            case .home:
                HomeView()
            case .profile:
                Profile()
            }
            Footer(selectedView: $selectedView)
        }
    }
}


#Preview {
    RootView()
}
