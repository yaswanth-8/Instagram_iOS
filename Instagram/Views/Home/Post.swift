//
//  Post.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI

struct PostView: View {
    var post : Post = Post(id: "1", image: "https://wallpapercave.com/dwp2x/7chNglp.jpg", description: "Beautiful place to visit")
    var body: some View {
        VStack {
            HStack{
                Image("profile")
                    .resizable()
                    .frame(width: 32,height: 32)
                VStack(alignment: .leading){
                    Text("Yaswanth")
                        .font(.system(size: 13.5))
                    Text("Florence, Italy")
                        .font(.system(size: 11.5))
                }
                Spacer()
                Image("more")
            } //: Header HStack
            .padding(.horizontal)
            .padding(.vertical,5)
            AsyncImage(url: URL(string: post.image)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 200, height: 300)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                case .failure:
                    // Handle error
                    Text("Failed to load image")
                @unknown default:
                    // Handle unknown case
                    Text("Unknown state")
                }
            }
            HStack{
                HStack(spacing:15){
                    Image("heart-fill")
                    Image("comment")
                    Image("direct")
                }
                Spacer()
                Image("save")
            }
            .padding(.horizontal,12)
            .padding(.vertical,5)
            HStack {
                Image("likes-profiles")
                Text("liked by ")
                    .font(.caption) +
                Text("gp")
                    .font(.caption)
                    .fontWeight(.semibold) +
                Text(" and ")
                    .font(.caption) +
                Text("others")
                    .font(.caption)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.horizontal)
            HStack {
                Text("Yaswanth")
                    .font(.caption)
                    .fontWeight(.semibold) +
                Text(" "+post.description)
                    .font(.caption)
                Spacer()
            }
            .padding(.horizontal)
            Text("25 minutes ago")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.vertical,3)
                .font(.caption2)
                .foregroundColor(.gray)
            
        }//: VStack
    }
}

#Preview {
    PostView()
        .previewLayout(.sizeThatFits)
}
