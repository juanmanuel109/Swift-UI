//
//  myFirstView.swift
//  Little Lemon Demo
//
//  Created by Juan Manuel Ordoñez on 23/03/24.
//

import SwiftUI

struct myFirstView: View {
    var body: some View {
    
        Text("intento")
            .font(.system(size: 19, weight: .heavy, design: .serif))
            .italic()
    }
}

struct myFirstView_Previews: PreviewProvider {
    static var previews: some View {
        myFirstView()
    }
}

