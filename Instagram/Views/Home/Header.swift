//
//  Header.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
            Spacer()
            HStack(spacing:26) {
                Image("heart")
                Image("direct")
            }
        }
        .padding(.horizontal,20)
    }
}

#Preview {
    Header()
}
