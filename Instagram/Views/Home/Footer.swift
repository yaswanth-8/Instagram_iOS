//
//  Footer.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI

struct Footer: View {
    @Binding var selectedView: ContentView
    @ObservedObject var model = ApiClient()
    var body: some View {
        HStack {
            Button(action: {
                selectedView = .home
            }) {
                Image("home-fill")
                    .resizable()
                    .frame(width: 22, height: 22)
            }
            Spacer()
            Image("search")
                .resizable()
                .frame(width: 22, height: 22)
            Spacer()
            Button(action: {
                model.addPost(post: Post(id: "", image: "https://cdn.pixabay.com/photo/2018/05/07/22/08/opera-house-3381786_640.jpg", description: "Sydney, capital of New South Wales and one of Australia's largest cities, is best known for its harbourfront Sydney Opera House, with a distinctive sail-like design.", location: "Sydney, Australia"))
            }){
                Image("add")
                    .resizable()
                    .frame(width: 22, height: 22)
            }
            
            Spacer()
            Image("reel")
                .resizable()
                .frame(width: 22, height: 22)
            Spacer()
            Button(action: {
                selectedView = .profile
            }) {
                Image("profile")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 6)
    }
}

#Preview {
    Footer(selectedView: .constant(.home))
        .previewLayout(.sizeThatFits)
}
