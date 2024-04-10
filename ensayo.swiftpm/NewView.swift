//
//  NewView.swift
//  ensayo
//
//  Created by Juan Manuel Ordoñez on 1/04/24.
//

import SwiftUI

struct NewView: View {
    @ObservedObject var model = Model()
    var body: some View {
        VStack{
            List{
                ForEach(model.meals) {
                    item in
                    Text(item.name)
                }
                
            }
        }
    }
}

struct Item: Identifiable{
   let id = UUID()
    let name: String
}
class Model: ObservableObject{
    @Published var meals: [Item] = menuItems()
    static func menuItems() -> [Item]{
        return [
        Item(name: "sacos"),
        Item(name: "gorras"),
        Item(name: "camisetas")
        ]
    }
}
struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}
