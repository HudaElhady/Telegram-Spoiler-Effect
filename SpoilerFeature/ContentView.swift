
import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    
    var body: some View {
        Text("This is a secret message")
            .font(.title)
            .modifier(SpoilerModifier(isOn: isOn))
            .onTapGesture {
                isOn.toggle()
            }
    }
}

#Preview {
    ContentView()
}
