//
//  DetailView.swift
//  H4X0R-News-SwiftUI
//
//  Created by tetsuta matsuyama on 2022/08/06.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
