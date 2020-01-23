//

import SwiftUI

struct SignUpLastName: View {
    @EnvironmentObject var store: RootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter Last Name",
                destination: SignUpEmail(),
                text: $store.state.signUpState.lastName,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct SignUpLastName_Previews: PreviewProvider {
    static var previews: some View {
        SignUpLastName()
        .environmentObject(RootStore())
    }
}
