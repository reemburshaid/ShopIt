//
//  Item.swift
//  ShopIt
//
//  Created by Reem Burshaid on 11/12/2024.
//

import Foundation

struct Item: Identifiable, Hashable, Comparable, Codable {
    var id : Int
    var title: String
    var image: String
    var description: String
    var category: String
    
    static func < (lhs: Item, rhs: Item) -> Bool {
        return lhs.id < rhs.id
    }
}

var itemList = [
    Item(
            id: 1,
            title: "Mini Rolls Vanilla",
            image: "rolls",
            description: "Vanilla cake rolls filled with vanilla cream, soft and spongy texture that melts away, perfect for a tea time snack or a quick sweet treat",
            category: "Bakery"
        ),

    Item(
            id: 2,
            title: "White Bread",
            image: "bread",
            description: "This bread is made from the choicest high-quality ingredients, which makes it highly nutritious meal for the morning. It’s the perfect choice for your child’s lunch box. ",
            category: "Bakery"
        ),

    Item(
            id: 3,
            title: "Cup Cake Chocolate Box",
            image: "cupcake",
            description: "Sponge-soft cake has a rich, smooth chocolate center you can serve this cake to  your loved ones on any occasion. Must be stored at 20 - 25 degrees",
            category: "Bakery"
        ),

    Item(
            id: 4,
            title: "Burger Buns",
            image: "buns",
            description: "The buns deliver consistently delicious flavor, enriched with high quality ingredients that make eating an amazon experience. Keep a cool and dry place. ",
            category: "Bakery"
        ),
    Item(
            id: 5,
            title: "Puff cheese",
            image: "puff",
            description: "A freshly baked puff made from all-purpose flour with richly filled cheese inside, the puffs are sweet, crunchy, crispy and tasty.",
            category: "Bakery"
        ),

    Item(
            id: 6,
            title: "Bread Rolls",
            image: "breadroll",
            description: "Indulge in the fluffy goodness of the hotdog roll bread crunchy on the outside and soft on the inside, the package contains six large hot dog buns ",
            category: "Bakery"
        ),

    Item(
            id: 7,
            title: "Flat Bread",
            image: "flatbread",
            description: "Bakery's White Arabic Bread - a pack of 5 pieces, each measuring 33 cm in diameter. This bread is a staple in Middle Eastern cuisine and is perfect for scooping up dips, making sandwiches, or simply enjoying with a drizzle of olive oil. It's made from high-quality, all-natural ingredients, ensuring you get the authentic taste of traditional Arabic bread. ",
            category: "Bakery"
        ),

    Item(
            id: 8,
            title: "Tortilla",
            image: "tortilla",
            description: "Tortilla Wraps, the perfect base for any wrap, burrito, or taco you're craving! This 360g pack is filled with soft, versatile tortillas that are ready to be filled with your favorite ingredients. ",
            category: "Bakery"
        ),

    Item(
            id: 9,
            title: "Club Soda",
            image: "water1",
            description: "Water with a balanced formula energizes and nourishes your body.  ",
            category: "Beverages"
        ),

    Item(
            id: 10,
            title: "Still Water",
            image: "water2",
            description: "Refreshing and hydrating water. ",
            category: "Beverages"
        ),

    Item(
            id: 11,
            title: "Miranda",
            image: "soda1",
            description: "Quench your thirst with a refreshing soft drink. 6X330ML cans pack, perfect for sharing",
            category: "Beverages"
        ),

    Item(
            id: 12,
            title: "Non-carbonated Ice Tea",
            image: "icetea",
            description: "Infused with a unique blend of real tea and peach juice with a delicious and refreshing drink on the go",
            category: "Beverages"
        ),

    Item(
            id: 13,
            title: "Dry Cream Soda Drink",
            image: "soda2",
            description: "Distinct flavors to satisfy on a relaxing summer day ",
            category: "Beverages"
        ),

    Item(
            id: 14,
            title: "Mango Juice",
            image: "juice",
            description: "Mango juice is concentrated and sweet in taste",
            category: "Beverages"
        ),

    Item(
            id: 15,
            title: "Coca-Cola",
            image: "cola",
            description: "Delicious and refreshing taste of Coca-Cola, without sugar and calories, perfect size to enjoy with a meal with family and friends",
            category: "Beverages"
        ),

    Item(
            id: 16,
            title: "RedBull",
            image: "energy",
            description: "Red Bull Energy Drink’s special formula contains ingredients of high quality: caffeine, Taurine, B-Group vitamins, sugar, alpine water",
            category: "Beverages"
        ),

    Item(
            id: 17,
            title: "Milk",
            image: "milk",
            description: "Full Fat Milk HDPE is made of fresh milk that is loaded with calcium and essential nutrients for your body. Free from any additives or preservatives",
            category: "Dairy"
        ),

    Item(
            id: 18,
            title: "Cheese",
            image: "cheese",
            description: "It has a tangy flavour that is sure to tantalize your taste buds. The cheese is great to consume with a sandwich toast or pizza. It ranks high in calcium to provide your bones with nourishment and care",
            category: "Dairy"
        ),

    Item(
            id: 19,
            title: "Butter",
            image: "butter",
            description: "Salted butter block is made with 100% fresh cow's milk, no added rennet. Has a fresh, pure buttery taste and is great for cooking and baking",
            category: "Dairy"
        ),
    Item(
            id: 20,
            title: "Eggs",
            image: "eggs",
            description: "Freshly sourced to make your meals nutritious, Loaded with protein and vitamin D. Used as an ingredient for a variety of savoury and sweet dishes. Makes a wholesome and filling breakfast. Perfect for making fluffy omelettes.",
            category: "Dairy"
        ),

    Item(
            id: 21,
            title: "Yoghurt",
            image: "yoghurt",
            description: "Delicious and creamy full-fat yoghurt. It comes in a convenient pack of 6 individual 170g cups, making it perfect for on-the-go snacking or adding to meals. Made with high-quality ingredients, this yoghurt is a healthy and refreshing choice.",
            category: "Dairy"
        ),

    Item(
            id: 22,
            title: "Vanilla Pudding",
            image: "pudding",
            description: "Irresistible dessert made of 80% milk. Whether you prefer it as a snack or as a dessert, it is a delicious and healthy treat that will satisfy the whole family.",
            category: "Dairy"
        ),

    Item(
            id: 23,
            title: "Labneh",
            image: "labneh",
            description: "Fresh spreading cheese and healthy alternative to regular cream cheese. It has been a firm favorite for years.",
            category: "Dairy"
        ),

    Item(
            id: 24,
            title: "Labneh",
            image: "cream",
            description: "Cream Full Fat is made from 100% fresh cow's milk and it is enriched with vitamin and calcium to provide you with added nutritional benefits.",
            category: "Dairy"
        ),

    Item(
            id: 25,
            title: "Cucumber",
            image: "cucumber",
            description: "Approximately 8 - 10 pcs.",
            category: "Fruits & Veggies"
        ),

    Item(
            id: 26,
            title: "Banana",
            image: "banana",
            description: "1kg packet is filled with ripe, ready-to-eat bananas that are perfect for a healthy snack or a nutritious addition to your meals.",
            category: "Fruits & Veggies"
        ),

    Item(
            id: 27,
            title: "Tomato",
            image: "tomato",
            description: "Approximately 4 - 6 pcs.",
            category: "Fruits & Veggies"
        ),

    Item(
            id: 28,
            title: "Mango",
            image: "mango",
            description: "Packed with natural sugars, carbohydrates and tons of other essential nutrients like multivitamins to provide you with all the daily nutritional intake.",
            category: "Fruits & Veggies"
        ),

    Item(
            id: 29,
            title: "Apples",
            image: "apples",
            description: "Approximately 8 - 10 pcs.",
            category: "Fruits & Veggies"
        ),

    Item(
            id: 30,
            title: "Onion",
            image: "oninon",
            description: "Benefits your overall health Rich in antioxidants, fibres, vitamin C, potassium, and other nutrients. Sourced carefully to ensure good quality. Enhances the taste and flavour of dishes.",
            category: "Fruits & Veggies"
        ),

    Item(
            id: 31,
            title: "Pomegranate",
            image: "pomegranate",
            description: "Rich source of dietary fibres and nutrients. Powerhouse of antioxidants and flavonoids. Sourced carefully to ensure good quality.",
            category: "Fruits & Veggies"
        ),

    Item(
            id: 32,
            title: "Cabbage",
            image: "cabbage",
            description: "Has fewer calories and a higher content of antioxidants. A powerhouse of dietary fibres. Sourced carefully to ensure good quality.",
            category: "Fruits & Veggies"
        ),

    Item(
            id: 33,
            title: "Orange",
            image: "orange",
            description: "Approximately 3 - 5 pcs.",
            category: "Fruits & Veggies"
        ),

    Item(
            id: 34,
            title: "Pineapple",
            image: "pineapple",
            description: "Stored at 5 degrees.",
            category: "Fruits & Veggies"
        ),

    Item(
            id: 35,
            title: "Broccoli",
            image: "broccoli",
            description: "Source of dietary fiber. A great appetizer, party snack or accompaniment with various beverages.",
            category: "Fruits & Veggies"
        ),

    Item(
            id: 36,
            title: "Lemon",
            image: "lemon",
            description: "Approximately 3 - 5 pcs.",
            category: "Fruits & Veggies"
        ),

    Item(
            id: 37,
            title: "Sour Candy",
            image: "candy",
            description: "Sour jellies with delicious and tangy flavors.",
            category: "Snacks"
        ),

    Item(
            id: 38,
            title: "Hershey’s Chocolate Bar",
            image: "choco",
            description: "Made from clasic Hershey’s milk chocolate that’s smooth and creamy and delicious, these full size chocolate bars are perfect when you want to stop and savour life’s sweeter side.",
            category: "Snacks"
        ),

    Item(
            id: 39,
            title: "Cheetos",
            image: "chips",
            description: "Cheetos has been providing the irresistible crunchy snacks for decades. Each of its creation will have you reaching back into the packet in search of more cheesy or spicy goodness.",
            category: "Snacks"
        ),

    Item(
            id: 40,
            title: "Funyuns",
            image: "chips1",
            description: "Funyuns Onion Flavored Rings are a deliciously different snack that’s fun to eat with a crisp texture and zesty onion flavor.",
            category: "Snacks"
        ),

    Item(
            id: 41,
            title: "Crinkles",
            image: "chips2",
            description: "Crinkles flavorful potato chips. Made from high-quality potatoes and pure sunflower oil for a delicious chip with great crunch.",
            category: "Snacks"
        ),

    Item(
            id: 42,
            title: "Takis",
            image: "chips3",
            description: "Takis Fuego Hot Chili Pepper & Lime Tortilla Chips, flavored with crunchy chili and lemon, for those who like hot taste.",
            category: "Snacks"
        ),

    Item(
            id: 43,
            title: "Minis Sorbets Ice Cream",
            image: "icecream",
            description: "Indulge in the refreshing flavours of London Dairy Minis Sorbets Ice Cream. This pack of 6 50ml sorbets is perfect for satisfying your sweet tooth on a hot summer day.",
            category: "Snacks"
        ),

    Item(
            id: 44,
            title: "Icecream",
            image: "icecream1",
            description: "Magnum chocolate and velvety vanilla ice cream mini, the perfect balance of cracking magnum chocolate and velvety smooth vanilla ice cream.",
            category: "Snacks"
        )
    
    ]

