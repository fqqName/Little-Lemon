//
//  Header.swift
//  Final project Little lemon
//
//  Created by Pascal on 19.03.23.
//

import SwiftUI

struct Header: View {
    var body: some View {
        Image("Logo")
            .frame(maxWidth: .infinity, minHeight: 70)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
