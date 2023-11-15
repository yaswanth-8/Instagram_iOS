//
//  Highlights.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI

struct Highlights: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing:10){
                ForEach(1...5, id: \.self) { _ in
                    Highlight()
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    Highlights()
}
