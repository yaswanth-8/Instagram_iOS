import SwiftUI

struct ProfilePosts: View {
    @State private var selectedTabIndex = 0

    var body: some View {
        VStack {
            HStack(spacing: 20) {
                ForEach(0..<3) { index in
                    Spacer()
                    Image(index == 0 ? "grid" : (index == 1 ? "reel-inactive" : "tags"))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 22, height: 22)
                        .onTapGesture {
                            withAnimation {
                                selectedTabIndex = index
                            }
                        }
                    Spacer()
                }
            }
            .padding(.horizontal, 20)

            // Line below the selected tab
            GeometryReader { geometry in
                Capsule()
                    .fill(Color.blue) // Adjust color as needed
                    .frame(width: geometry.size.width / 3, height: 2)
                    .offset(x: CGFloat(selectedTabIndex) * geometry.size.width / 3)
            }
            .frame(height:0)
            .animation(.easeInOut)

            // Content based on the selected tab
            TabView(selection: $selectedTabIndex) {
                Posts()
                    .tag(0)
                ReelsView()
                    .tag(1)
                TagsView()
                    .tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}


struct ReelsView: View {
    var body: some View {
        Text("Reels Content")
            .padding()
    }
}

struct TagsView: View {
    var body: some View {
        Text("Tags Content")
            .padding()
    }
}

struct ProfilePosts_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePosts()
    }
}
