//
//  NetworkManager.swift
//  H4X0R-News-SwiftUI
//
//  Created by tetsuta matsuyama on 2022/07/28.
//

import Foundation

class NetworkManager {
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page#") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in

                if error == nil {
                    if let safeData = data {
                        let dataString = String(data: safeData, encoding: .utf8)
                        print(dataString)
                    }
                }
            }
            task.resume()
        }
        
    }
    
}
