//
//  show.swift
//  ensayo
//
//  Created by Juan Manuel Ordoñez on 26/03/24.
//

import SwiftUI

struct show: View {
    @Binding var ShowLogo:Bool
    var body: some View {
        VStack{
            if ShowLogo {
                Image("m").resizable().scaledToFit().frame(width: 300)
            }
          
                Button(action: {ShowLogo.toggle()}, label: {
                    Text("LOGO ON/OFF")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .foregroundStyle(.white) .padding(10)
                        .background(Color.black)
                        .cornerRadius(10)
                    
                   
                })
                            
        }
    }
}


struct show_Previews: PreviewProvider{
    static var previews: some View {
        show(ShowLogo: .constant(true))
        }
}
