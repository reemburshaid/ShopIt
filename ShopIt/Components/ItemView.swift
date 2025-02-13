//
//  ItemView.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import SwiftUI

struct ItemView: View {
    @StateObject var favoriteManager = FavoriteManager.instance
    var item: Item
    
    var body: some View {
        ScrollView{
            VStack() {
                
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400, alignment: .center)
                
                HStack {
                    Text(item.title)
                        .font(.largeTitle)
                        .bold()
                    
                    Spacer()
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
                            .background(Color(red: 0.9509, green: 0.9137, blue: 0.8706))                            .cornerRadius(.infinity)
                            .padding(8)
                    }
                }
                .padding()
                Spacer(minLength: -15)
                
                VStack(alignment: .leading,spacing: 10) {
                    Text(item.description)
                    HStack{
                        Text("Category:")
                            .fontWeight(.bold)
                        Text(item.category)
                    }
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

#Preview {
    ItemView(item: itemList[0])
}
