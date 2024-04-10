import SwiftUI

struct ListView: View {
    let elements = ["Reservation", "Contacts", "Restaurant Locations"]
    
    var body: some View {
        List {
            Section(header: Text("Important Information")) {
                Text("This List shows information about our restaurant pages")
                    .font(.headline)
            }

            ForEach(elements, id: \.self) { element in
                NavigationLink(destination: ReservationCalendar()) {
                    Text(element)
                }
            }

            Section(footer: Text("More Information")) {
                Text("Contact us as (212) 555 3231")
            }
        }
        .scrollContentBackground(.hidden)
        .padding()
    } 
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

