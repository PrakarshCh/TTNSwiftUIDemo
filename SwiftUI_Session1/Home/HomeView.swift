//
//  HomeView.swift
//  SwiftUI_Session1
//
//  Created by Prakash Chaurasia on 20/06/24.
//

import SwiftUI

struct HomeView: View {
    let items = [
        Item(name: "Amul Milk", details: "Pure milk"),
        Item(name: "Amul Chocolate", details: "Dark Chocolate"),
        Item(name: "Amul cool masti chaach", details: "Refreshing")
    ]
    @Binding var path: NavigationPath
    
    var body: some View {
        List(items) { item in
            Button(action: {
                path.append(Route.detail(item))
            }) {
                Text(item.name)
            }
        }
        .navigationTitle("Amul Products")
    }
}


