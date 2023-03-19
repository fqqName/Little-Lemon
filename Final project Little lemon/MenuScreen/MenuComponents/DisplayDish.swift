//
//  DisplayDish.swift
//  Final project Little lemon
//
//  Created by Pascal on 19.03.23.
//

import SwiftUI

struct DisplayDish: View {
    private var dish:Dish
    
    init(_ dish:Dish) {
        self.dish = dish
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(dish.title!)
                    .bold()
                
                Text(dish.descriptionDish ?? "")
                    .lineLimit(2)

                Text(formatPrice(dish.price))
                    .monospaced()
                    .font(.callout)
                    .foregroundColor(deepGreen)
                    .bold()
            }
            .frame(width: 200)
            
            Spacer()

            AsyncImage(url: URL(string: dish.imgUrl!)) { image in
                image.resizable()
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(8) 

            } placeholder: {
                ProgressView()
            }
            .frame(width: 100, height: 100)
        }
        .contentShape(Rectangle())
        .frame(maxWidth: .infinity)
    }
    
    func formatPrice(_ price: Float) -> String {
        let spacing = price < 10 ? " " : ""
        return "$ " + spacing + String(format: "%.2f", price)
    }
}

struct DisplayDish_Previews: PreviewProvider {
    static let context = PersistenceController.shared.container.viewContext
    let dish = Dish(context: context)
    static var previews: some View {
        DisplayDish(oneDish())
    }
    static func oneDish() -> Dish {
        let dish = Dish(context: context)
        dish.title = "Greek Salad"
        dish.descriptionDish = "The famous greek salad of crispy lettuce, peppers, olives, our Chicago."
        dish.category = "starters"
        dish.price = 10
        dish.imgUrl = "https://github.com/Meta-Mobile-Developer-PC/Working-With-Data-API/blob/main/images/greekSalad.jpg?raw=true"
        return dish
    }
}
