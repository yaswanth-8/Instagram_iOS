//
//  ContentView.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Header()
        ScrollView(.vertical){
            Stories()
            Divider()
            Post()
            Post()
        }
    }
}

#Preview {
    HomeView()
}
