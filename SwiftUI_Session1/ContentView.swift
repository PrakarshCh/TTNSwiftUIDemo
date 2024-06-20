//
//  ContentView.swift
//  SwiftUI_Session1
//
//  Created by Prakash Chaurasia on 14/06/24.
//

import SwiftUI
enum Route: Hashable {
    case home
    case detail(Item)
}
import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showingAlert: Bool = false
    @Binding var path: NavigationPath
    

    var body: some View {
        VStack(spacing: 20) {
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            Text("Please login to continue using our app")
                .font(.headline)
                .fontWeight(.medium)
                .padding(.bottom, 10)
            
            TextField("Username", text: $username)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
            
            Button(action: {
                if !username.isEmpty && !password.isEmpty {
                    path.append(Route.home)
                } else {
                    showingAlert = true
                }
            }) {
                Text("Login")
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Error"), message: Text("Please fill all fields."), dismissButton: .default(Text("OK")))
            }
        }
        .padding()
    }
}



