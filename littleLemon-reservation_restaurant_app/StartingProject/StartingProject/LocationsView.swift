import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack {
            LittleLemonLogo()
                .padding(.top, 50)
            
      /*      if model.displayingReservationForm {
                Text("Details of the reserve")
                    .padding([.leading, .trailing], 40)
                    .padding([.top, .bottom], 8)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
            } else {
                Text("Select a location")
                    .padding([.leading, .trailing], 40)
                    .padding([.top, .bottom], 8)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
            }
       this is my way to solve this section*/
            Text (model.displayingReservationForm ? "Reservation Details" : "Select a location")
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            
            
            NavigationView {
                List(model.restaurants, id: \.self) { restaurant in
                    NavigationLink(destination: ReservationForm(restaurant)) {
                        RestaurantView(restaurant)
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }
        .onDisappear{
             if model.tabBarChanged { return }
              model.displayingReservationForm = true
        }
        
        .frame(maxHeight: .infinity)
        .padding(.top, -10)
        .scrollContentBackground(.hidden)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}

