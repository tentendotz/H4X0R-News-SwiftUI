//
//  ContentView.swift
//  H4X0R-News-SwiftUI
//
//  Created by tetsuta matsuyama on 2022/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //TODO: - NavigationView is deprecated in iOS 16. Use NavigationStack.
        NavigationView {
            
            Text("Hello, world!")
            
            .navigationTitle("H4X0R NEWS")
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
