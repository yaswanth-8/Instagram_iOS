//
//  ContentView.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var model = ApiClient()
    init(){
        model.fetchPosts()
    }
    var body: some View {
        Header()
        ScrollView(.vertical, showsIndicators: false){
            Stories()
            Divider()
            ForEach(model.posts){ post in
                PostView(post: post)
            }
        }
    }
}

#Preview {
    HomeView()
}
