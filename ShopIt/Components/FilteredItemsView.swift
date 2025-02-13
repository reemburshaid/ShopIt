//
//  FilteredItemsView.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import SwiftUI

struct FilteredItemsView: View {
    @StateObject var favoriteManager = FavoriteManager.instance
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var category: String
    
    //sort items alphabetically
    var sortedFilteredItems: [Item] {
            return itemList.filter { $0.category == category }.sorted { $0.title < $1.title }
        }
    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    
                    
                    ForEach(sortedFilteredItems.filter { $0.category == category }, id: \.id) { item in
                        ItemCard(item: item)
                            .environmentObject(favoriteManager)
                            .onTapGesture {
                                favoriteManager.addToFavorite(item: item)
                            }
                    }
                }
                .padding()
            }
            .navigationTitle(Text("\(category) Items"))
            .toolbar {
                NavigationLink(destination: FavoriteView().environmentObject(favoriteManager)) {
                    FavoriteButton(numberOfItems: favoriteManager.items.count)
                }
            }
        }
}


#Preview {
    FilteredItemsView(category: "Beverages")
}
