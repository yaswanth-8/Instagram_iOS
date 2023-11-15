//
//  Stories.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing:10){
                ForEach(1...10, id: \.self) { _ in
                    Story()
                }
            }
            .padding()
        }
    }
}

#Preview {
    Stories()
}
