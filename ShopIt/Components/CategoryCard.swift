//
//  CategoryCard.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import SwiftUI

import SwiftUI

struct CategoryCard: View {
    var category: Category1
    
    var body: some View {
        NavigationLink(destination: FilteredItemsView(category: category.name)) {
            ZStack(alignment: .topTrailing) {
                ZStack(alignment: .bottom) {

                    HStack {
                        Image(category.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 180)
                        
                        Spacer()

                        VStack {
                            Text(category.name)
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.9509, green: 0.9137, blue: 0.8706))
                                
                            
                        }

                    }
                    .padding(30)
                }
                .frame(width: 350, height: 200)
                .background(Color(red: 0.4824, green: 0.3490, blue: 0.2745))
                .shadow(radius: 25)
                .cornerRadius(50)
            }
        }
    }
}


#Preview {
    CategoryCard(category: categoryList[2])
        
}

