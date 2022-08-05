//
//  NetworkManager.swift
//  H4X0R-News-SwiftUI
//
//  Created by tetsuta matsuyama on 2022/07/28.
//

import Foundation

class NetworkManager {
    
    var posts: [Post] = []
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page#") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                let decoder = JSONDecoder()
                if error == nil {
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
        
    }
    
}
