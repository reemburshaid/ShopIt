//
//  Category.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import Foundation

struct Category1: Identifiable{
    var id = UUID()
    var name: String
    var image: String
}

var categoryList = [Category1(name: "Fruits & Veggies", image: "Fruits & Viggies"),
                    Category1(name: "Bakery", image: "bakery"),
                    Category1(name: "Dairy", image: "dairy"),
                    Category1(name: "Snacks", image: "snacks"),
                    Category1(name: "Beverages", image: "beverages")]
