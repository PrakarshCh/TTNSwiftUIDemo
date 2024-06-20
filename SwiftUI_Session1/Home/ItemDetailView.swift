//
//  HomeDetailView.swift
//  SwiftUI_Session1
//
//  Created by Prakash Chaurasia on 20/06/24.
//

import SwiftUI

import SwiftUI

struct ItemDetailView: View {
    let item: Item

    var body: some View {
        VStack {
            Text(item.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Text(item.details)
                .padding()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    ItemDetailView(item: Item(name: "Item 1", details: "Details about Item 1"))
}
