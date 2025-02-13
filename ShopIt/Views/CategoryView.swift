//
//  CategoryView.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(categoryList, id: \.id){category1 in
                        NavigationLink{
                            ScrollView{
                                
                            }
                        }label:{
                            CategoryCard(category: category1)
                        }
                        
                    }
                    .padding(5)
                    
                    
                }
                .padding()
                
            }
            .navigationTitle(Text("Category"))
        }
    }
}

#Preview {
    CategoryView()
}
