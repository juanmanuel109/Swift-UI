import SwiftUI

struct ContentView: View {
    @State private var showLogo = true
    
    var body: some View {
        NavigationView {
            VStack {
                Text("MONASTERY POP")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(20)
                    .background(Color.black)
                    .cornerRadius(10)
                
                show(ShowLogo: $showLogo)
                
                NavigationLink(destination: ReservationCalendar()) {
                    Text("Reserva tu cita")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.black)
                        .cornerRadius(10)
                        .navigationBarTitleDisplayMode(.automatic)
                }
                NavigationLink(destination: MyTabView()) {
                    Image(systemName: "house")
                        
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

