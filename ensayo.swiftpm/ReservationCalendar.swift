import SwiftUI

struct ReservationCalendar: View {
    @State var reservationDate = Date()
    @State var flag = false
    
    var body: some View {
        VStack {
            Form {
                HStack {
                    DatePicker(selection: $reservationDate, in: Date()..., displayedComponents: [.date, .hourAndMinute]) {}
                }
                Button(action: { print("do something") }) {
                    HStack(alignment: .center) {
                        Image(systemName: "j.circle")
                        Text("and")
                        Image(systemName: "m.circle")
                    }
                }
                Text("El \(reservationDate.formatted(date: .complete, time: .shortened))")
                Text("touch me")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding(6)
                    .background(flag ? Color.green : Color.yellow)
                    .cornerRadius(4.0)
                    .onTapGesture {
                        flag.toggle()
                    }
            }
        }
        .frame(maxWidth: .infinity, alignment: .center) // Centra el contenido horizontalmente
    }
}

struct ReservationCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendar()
    }
}

