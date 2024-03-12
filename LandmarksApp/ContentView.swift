import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading) {
                    Text("Endert’s Beach")
                        .font(.title)
                        .bold()
                    HStack {
                        Text("Redwood National Park")
                        Spacer()
                        Text("California, USA")
                    }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("About Endert's Beach")
                        .font(.title3)
                        .bold()
                    Text("Descriptive text goes here")
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
