import SwiftUI

struct MyTabView: View {
    var body: some View {
        VStack{
            TabView{
                
                Text("This is the Share View")
                Image("m").resizable().scaledToFit().frame(width: 300)
            .tabItem({
                        Label("Share", systemImage: "square.and.arrow.up")
                    })
                
                Text("This is the Trash View")
                    .tabItem({
                        Label("", systemImage: "trash")
                    })

            }
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
