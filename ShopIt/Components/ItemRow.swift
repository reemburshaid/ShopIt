//
//  ItemRow.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import SwiftUI

struct ItemRow: View {
    @EnvironmentObject var favoriteManager: FavoriteManager
    var item: Item
    
    var body: some View {
        NavigationLink(destination: ItemView(item: item)) {
            HStack(spacing: 20){
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .cornerRadius(10)
                
                
                VStack(alignment: .leading, spacing: 10){
                    Text(item.title)
                        .bold()
                        .foregroundColor(.black)
                    
                
                }
                
                Spacer()
                
                Image(systemName: "trash")
                    .foregroundColor(.gray)
                
                .onTapGesture {
                    favoriteManager.removeFromFavorite(item: item)
                }
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(10)
    }
}

#Preview {
    ItemRow(item: itemList[1])
        .environmentObject(FavoriteManager.instance)
}
