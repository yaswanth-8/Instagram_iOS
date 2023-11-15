//
//  Story.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI

struct Story: View {
    var body: some View {
        VStack {
            ZStack {
                Image("story-circle")
                    .resizable()
                    .frame(width: 74, height: 74)
                Image("profile")
                    .resizable()
                    .frame(width: 66, height: 66)
                    .overlay(Circle().stroke(.white,lineWidth: 3))
            }
            Text("Yaswanth")
                .font(.caption)
        }
    }
}

#Preview {
    Story()
        .previewLayout(.sizeThatFits)
        .padding()
}
