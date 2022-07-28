//
//  ContentView.swift
//  H4X0R-News-SwiftUI
//
//  Created by tetsuta matsuyama on 2022/07/27.
//

import SwiftUI

struct ContentView: View {
    
    var networkManager = NetworkManager()
    
    var body: some View {
        
        //TODO: - NavigationView is deprecated in iOS 16. Use NavigationStack.
        NavigationView {
            List(items) { item in
                Text(item.title)
            }
            .navigationTitle("H4X0R NEWS")
        }
        .navigationViewStyle(.stack)
        
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// Sample Items
struct Sample: Identifiable {
    let id: String
    let title: String
}

let items = [
    Sample(id: "1", title: "Hello"),
    Sample(id: "2", title: "Bonjour"),
    Sample(id: "3", title: "Hola")
]
