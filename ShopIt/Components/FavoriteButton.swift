//
//  FavoriteButton.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import SwiftUI

struct FavoriteButton: View {
    var numberOfItems: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "heart")
                .padding(.top, 5)
            
            if numberOfItems > 0{
                Text("\(numberOfItems)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(.red))
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    FavoriteButton(numberOfItems: 1)
}
