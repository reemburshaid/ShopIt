//
//  ItemCard.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import SwiftUI

struct ItemCard: View {
    @EnvironmentObject var favoriteManager: FavoriteManager
    var item: Item
    
    var body: some View {
        NavigationLink(destination: ItemView(item: item)) {
            ZStack(alignment: .topTrailing) {
                ZStack(alignment: .bottom) {
                    
                    Image(item.image)
                        .resizable()
                        .cornerRadius(30)
                        .frame(width: 175)
                        //.scaledToFit()
                       
                }
                .frame(width: 180, height: 203)
                .shadow(radius: 3)
                
                Button(action: {
                    if favoriteManager.isFavorite(item: item) {
                        favoriteManager.removeFromFavorite(item: item)
                    } else {
                        favoriteManager.addToFavorite(item: item)
                    }
                }) {
                    Image(systemName: favoriteManager.isFavorite(item: item) ? "heart.fill" : "heart")
                        .padding(10)
                        .foregroundColor(favoriteManager.isFavorite(item: item) ? .red : .black)
                        .background(Color(red: 0.9509, green: 0.9137, blue: 0.8706))
                        .cornerRadius(.infinity)
                        .padding(15)
                }
            
            }
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color(red: 0.4824, green: 0.3490, blue: 0.2745), lineWidth: 3)
                )
        }

    }
}

#Preview {
    ItemCard(item: itemList[0])
        .environmentObject(FavoriteManager.instance)
}
