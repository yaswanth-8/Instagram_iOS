import SwiftUI

struct Posts: View {
    struct ImageModel: Identifiable {
        var id: Int
        var image: Image
    }
    
    var images: [ImageModel] = (0..<4).map { ImageModel(id: $0, image: Image("puppy")) }
    var gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 1) {
            ForEach(images) { item in
                item.image
                    .resizable()
                    .frame(width: 133, height: 124)
            }
        }
        .frame(maxHeight:.infinity, alignment: .top)
    }
}

struct Posts_Previews: PreviewProvider {
    static var previews: some View {
        Posts()
    }
}
