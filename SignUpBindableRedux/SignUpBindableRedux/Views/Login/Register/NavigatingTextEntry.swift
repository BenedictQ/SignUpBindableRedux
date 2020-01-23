//

import SwiftUI

struct NavigatingTextEntry<Destination: View>: View {
    var placeholder: String
    var destination: Destination
    @Binding var text: String
    @Binding var shouldNavigateToNextScreen: Bool?
    var body: some View {
        VStack {
            NavigationLink(destination: destination,
                           tag: true,
                           selection: $shouldNavigateToNextScreen) {
                EmptyView()
            }
            Text(placeholder)
            TextField(placeholder, text: $text) {
                self.shouldNavigateToNextScreen = true
            }
            .multilineTextAlignment(.center)
        }
    }
}
struct NavigatingTextEntry_Previews: PreviewProvider {
    @State static var text: String = ""
    @State static var shouldNavigateToNextScreen: Bool?
    static var previews: some View {
        NavigationView {
            NavigatingTextEntry(
                placeholder: "Enter",
                destination: Text("Next screen"),
                text: $text,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}
