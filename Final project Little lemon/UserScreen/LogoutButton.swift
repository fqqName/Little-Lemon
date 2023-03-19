//
//  LogoutButton.swift
//  Final project Little lemon
//
//  Created by Pascal on 19.03.23.
//

import SwiftUI

struct LogoutButton: View {
    var presentation: Binding<PresentationMode>
    
    init(_ presentation: Binding<PresentationMode>) {
        self.presentation = presentation
    }
    
    var body: some View {
        Button {
            UserDefaults.standard.set("", forKey: kPhoneNumber)
            UserDefaults.standard.set(false, forKey: kIsLoggedIn)
            self.presentation.wrappedValue.dismiss()
        } label: {
            Text("Log out")
                .font(Font.system(size: 14).bold())
                .padding([.top, .bottom], 12)
                .frame(maxWidth: .infinity)
                .background(yellow)
                .cornerRadius(8)
        }
        .buttonStyle(PlainButtonStyle())
        .padding(.bottom)
    }
}


//struct LogoutButton_Previews: PreviewProvider {
//    static var previews: some View {
//        LogoutButton()
//    }
//}
