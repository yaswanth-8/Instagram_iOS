//
//  Profile.swift
//  Instagram
//
//  Created by Yaswanth on 14/11/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            HStack{
                Text("Yaswanth")
                    .font(.system(size: 24, weight: .bold))
                Spacer()
                HStack(spacing: 30){
                    Image("add")
                        .resizable()
                        .frame(width: 24, height: 24)
                    Image("menu")
                        .resizable()
                        .frame(width: 21, height: 17.5)
                }
            }
            .padding(.horizontal)
            
            HStack{
                Image("kohli")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 86, height: 86)
                    .clipShape(Circle())
                Spacer()
                VStack{
                    Text("210")
                        .font(.system(size: 16.5))
                    Text("Posts")
                        .font(.system(size: 14))
                }
                Spacer()
                VStack{
                    Text("701")
                        .font(.system(size: 16.5))
                    Text("Followers")
                        .font(.system(size: 14))
                }
                Spacer()
                VStack{
                    Text("1010")
                        .font(.system(size: 16.5))
                    Text("Following")
                        .font(.system(size: 14))
                }
            }
            .padding()
            VStack{
                Text("Yaswanth 🔥")
                    .frame(maxWidth : .infinity, alignment: .leading)
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                Text("Native iOS Developer 🍎, Web Developer 🌐, Illustrator 🎨, Cloud enthusiast ☁️")
                    .font(.system(size: 14))
                    .frame(maxWidth : .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical,1)
                    .lineSpacing(5)
            }
            HStack{
                Button("Edit profile"){}
                    .font(.system(size: 14))
                    .buttonStyle(MyButtonStyle(backgroundColor: Color.blue, foregroundColor: Color.white, borderColor: Color.blue))
                Button("Share profile"){}
                    .font(.system(size: 14))
                    .buttonStyle(MyButtonStyle(backgroundColor: Color.white, foregroundColor: Color.black, borderColor: Color.gray))
            }
            .padding(.vertical)
            Highlights()
                .padding(.bottom,15)
            
            ProfilePosts()
            Spacer()
        }
    }
}

#Preview {
    Profile()
}



struct MyButtonStyle: ButtonStyle {
    var backgroundColor: Color
    var foregroundColor: Color
    var borderColor: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 50)
            .padding(.vertical, 6)
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(borderColor, lineWidth: 1)
            )
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            
    }
}
