import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack (alignment: .center){
            Circle()
                .foregroundColor(Color.gray)
            Circle()
                .scale(x: 0.75, y: 0.75)
                .foregroundColor(Color.red)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .frame(maxWidth: .infinity, alignment: .center)
                Text ("APP DE FORM")
                    .padding()
                HStack(spacing: 10) {
                    Button("One"){}
                    Button("Two"){}

                }
            }
            
        }
    }
}
