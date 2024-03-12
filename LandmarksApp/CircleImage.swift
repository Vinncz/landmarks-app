import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Endert's Beach")
            .frame(width: 250, height: 250, alignment: .center)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
