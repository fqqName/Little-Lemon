//
//  CustomTextField.swift
//  Final project Little lemon
//
//  Created by Pascal on 19.03.23.
//

import SwiftUI

struct CustomTextField: View {
    var prompt: String
    @Binding var bindingVariable: String
    
    var body: some View {
        TextField(prompt, text: $bindingVariable)
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .padding(12)
            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
            .background(.white)
            .cornerRadius(10)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    @State var text = ""
    
    static var previews: some View {
        let customTextField_Previews = CustomTextField_Previews()
        return CustomTextField(prompt: "Input something", bindingVariable: customTextField_Previews.$text)
    }
}
