//
//  FavoriteView.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import SwiftUI

struct FavoriteView: View {
    @StateObject var favoriteManager = FavoriteManager.instance

    var body: some View {
        ScrollView {
            if favoriteManager.items.count > 0 {
                ForEach(Array(favoriteManager.items), id: \.id) { item in
                    ItemRow(item: item)
                }
            } else {
                Text("You haven't saved any items")
            }
        }
        .navigationTitle(Text("My Favorites"))
        .padding(.top)
    }
}


#Preview {
    FavoriteView()
        .environmentObject(FavoriteManager.instance)
}

