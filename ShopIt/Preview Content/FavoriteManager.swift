//
//  FavoriteManager.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import Foundation

class FavoriteManager: ObservableObject {
    
    static let instance = FavoriteManager()
    @Published private(set) var items: Set<Item> = []

    init() {
        loadFavorites()
    }

    func addToFavorite(item: Item) {
        items.insert(item)
        saveFavorites()
    }

    func removeFromFavorite(item: Item) {
        items.remove(item)
        saveFavorites()
    }

    func isFavorite(item: Item) -> Bool {
        return items.contains(item)
    }

    private func saveFavorites() {
        if let encoded = try? JSONEncoder().encode(Array(items)) {
            UserDefaults.standard.set(encoded, forKey: "favorites")
        }
    }

    private func loadFavorites() {
        if let itemsData = UserDefaults.standard.data(forKey: "favorites"),
           let decodedItems = try? JSONDecoder().decode([Item].self, from: itemsData) {
            items = Set(decodedItems)
        }
    }
}
