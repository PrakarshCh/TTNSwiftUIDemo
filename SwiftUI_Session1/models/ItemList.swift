//
//  ItemList.swift
//  SwiftUI_Session1
//
//  Created by Prakash Chaurasia on 20/06/24.
//

import SwiftUI

struct Item: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let details: String
}
