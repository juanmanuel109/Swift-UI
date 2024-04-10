import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Little Lemon Restaurant")
                .font(.title)
                .foregroundColor(.gray)
                .background(Color.black)
                .padding()
                .background(Color.gray)
                .fixedSize(horizontal: false, vertical: true)
            myFirstView()
        }
    }
}
