//
//  SwiftUI_Session1App.swift
//  SwiftUI_Session1
//
//  Created by Prakash Chaurasia on 14/06/24.
//

import SwiftUI

@main
struct YourApp: App {
    @State private var path = NavigationPath()
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path) {
                LoginView(path: $path)
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .home:
                            HomeView(path: $path)
                        case .detail(let item):
                            ItemDetailView(item: item)
                        }
                    }
            }
        }
    }
}

