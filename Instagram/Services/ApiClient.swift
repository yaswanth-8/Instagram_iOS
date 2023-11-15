//
//  ApiClient.swift
//  Instagram
//
//  Created by Yaswanth on 15/11/23.
//

import Firebase

class ApiClient : ObservableObject {
    @Published var posts : [Post] = []
    func fetchPosts(){
        posts.removeAll()
        let db = Firestore.firestore()
        db.collection("posts").getDocuments{ snapshot, error in
            if error == nil {
                if let snapshot = snapshot{
                    DispatchQueue.main.async {
                        self.posts = snapshot.documents.map { d in
                            return Post(
                                id: d.documentID,
                                image: d["image"] as? String ?? "",
                                description: d["description"] as? String ?? "",
                                location: d["location"] as? String ?? "")
                        }
                    }
                }
            }
        }
    }
    
    
    func addPost(post : Post){
//        let db = Firestore.firestore()
        print("add post")
//        db.collection("posts").addDocument(data: ["image" : post.image, "description": post.description, "location": post.location ]){ error in
//            if error == nil{
//                self.fetchPosts()
//            }
//            else {
//                
//            }
//        }
    }
}
