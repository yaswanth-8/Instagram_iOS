//
//  Highlight.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI

struct Highlight: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .foregroundColor(.gray)
                    .frame(width: 70, height: 70)
                Image("image")
                    .resizable()
                    .frame(width: 66, height: 66)
                    .overlay(Circle().stroke(.white,lineWidth: 3))
            }
            Text("📍Travel")
                .font(.caption)
        }
    }
}

#Preview {
    Highlight()
}
