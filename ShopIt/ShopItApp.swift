//
//  ShopItApp.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import SwiftUI

@main
struct ShopItApp: App {
    @StateObject var favoriteManager = FavoriteManager.instance

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(favoriteManager)
        }
    }
}
