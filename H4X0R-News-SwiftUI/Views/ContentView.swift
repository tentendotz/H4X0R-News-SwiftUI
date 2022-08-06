//
//  ContentView.swift
//  H4X0R-News-SwiftUI
//
//  Created by tetsuta matsuyama on 2022/07/27.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        //TODO: - NavigationView is deprecated in iOS 16. Use NavigationStack.
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink {
                    DetailView(url: post.url)
                } label: {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                .listRowBackground(Color(red: 245/255, green: 245/255, blue: 225/255))
            }
            .navigationTitle("H4X0R NEWS")
            .listStyle(PlainListStyle())
            .background(.orange)
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

