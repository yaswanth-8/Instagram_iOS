//
//  Footer.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI

struct Footer: View {
    @Binding var selectedView: ContentView

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
            Image("add")
                .resizable()
                .frame(width: 22, height: 22)
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
