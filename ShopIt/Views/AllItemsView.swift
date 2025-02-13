//
//  AllItemsView.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import SwiftUI

struct AllItemsView: View {
    @StateObject var favoriteManager = FavoriteManager.instance
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    //sort items alphabetically
    var sortedItemList: [Item] {
            return itemList.sorted { $0.title < $1.title }
        }

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(sortedItemList, id: \.id) { item in
                        NavigationLink(destination: ItemView(item: item)) {
                            ItemCard(item: item)
                                .environmentObject(favoriteManager)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle(Text("All Items"))
            .toolbar {
                NavigationLink {
                    FavoriteView()
                        .environmentObject(favoriteManager)
                } label: {
                    FavoriteButton(numberOfItems: favoriteManager.items.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}



#Preview {
    AllItemsView()
}



