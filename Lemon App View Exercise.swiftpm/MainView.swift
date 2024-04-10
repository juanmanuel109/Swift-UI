import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
           
                
                ZStack {
                    VStack {
                        Text("RESTAURANT")
                            .italic()
                            .font(.system(size: 30))
                        Color.green.opacity(0.5).ignoresSafeArea()
                        Text("LITTLE LEMON")
                            .italic()
                            .font(.system(size: 30))
                    }
                    Color.yellow.opacity(0.5).ignoresSafeArea()
                    HStack(spacing: 8) {
                      
                            Text("Little Lemon")
                                .font(.title)
                            
                            Text("Tomato Tortellini, Bottarga and Carbonara ")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                        
                    } .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding()
                }
            
            }
        }
    }


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

