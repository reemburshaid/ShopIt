//
//  ContentView.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var favoriteManager: FavoriteManager
        
        var body: some View {
            TabView {
                AllItemsView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                CategoryView()
                    .tabItem {
                        Label("Categories", systemImage: "square.fill.text.grid.1x2")
                    }
                NavigationView {
                    FavoriteView()
                }
                        .tabItem {
                            Label("Favorites", systemImage: "heart.fill")
                        }
            }
        }
}

#Preview {
    ContentView()
}
