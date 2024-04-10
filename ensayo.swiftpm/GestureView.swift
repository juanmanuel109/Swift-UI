//
//  GestureView.swift
//  ensayo
//
//  Created by Juan Manuel Ordoñez on 1/04/24.
//

import SwiftUI

struct GestureView: View {
    @State private var offsetValue = CGSize.zero
    var body: some View {
        Image("m")
            .offset(offsetValue)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        offsetValue = gesture.translation
                    }
            )
    }

}


struct GestureView_Previews: PreviewProvider {
    static var previews: some View {
        GestureView()
    }
}
