//
//  CategoryItem.swift
//  Final project Little lemon
//
//  Created by Pascal on 19.03.23.
//

import SwiftUI

import SwiftUI

struct CategoryItem: View {
    let category: String
    @State var isTapped = false
    
    init(_ category: String) {
        self.category = category
    }
    
    var body: some View {
        Text(category)
            .bold()
            .foregroundColor(isTapped ? .white : deepGreen)
            .padding([.top, .bottom], 10)
            .padding([.leading, .trailing], 10)
            .background(isTapped ? deepGreen : Color.gray.opacity(0.2))
            .cornerRadius(8)
            .onTapGesture {
                isTapped.toggle()
            }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem("Desserts")
    }
}
