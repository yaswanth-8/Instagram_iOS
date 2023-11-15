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
                                description: d["description"] as? String ?? "")
                        }
                    }
                }
            }
        }
    }
}
