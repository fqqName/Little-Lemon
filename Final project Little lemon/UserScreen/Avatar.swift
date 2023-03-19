//
//  Avatar.swift
//  Final project Little lemon
//
//  Created by Pascal on 19.03.23.
//

import SwiftUI

struct Avatar: View {
    var body: some View {
        HStack {
            Image("profile-image-placeholder")
                .resizable()
                .scaledToFit()
                .frame(width: 160)
                .cornerRadius(12)
                .padding([.trailing, .bottom])
            Spacer()
            VStack {
                Button(action: {
                    // Implement action
                }, label: {
                    Text("Change")
                        .font(Font.system(size: 14).bold())
                        .frame(width: 66)
                        .foregroundColor(.white)
                })
                .padding(10)
                .background(deepGreen)
                .cornerRadius(8)
                
                Button(action: {
                    // Implement action
                }, label: {
                    Text("Remove")
                        .font(Font.system(size: 14).bold())
                        .frame(width: 66)
                        .foregroundColor(deepGreen)
                })
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 8).strokeBorder(deepGreen, style: StrokeStyle(lineWidth: 1.0)))
            }
            Spacer()
        }
    }
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        Avatar()
    }
}
