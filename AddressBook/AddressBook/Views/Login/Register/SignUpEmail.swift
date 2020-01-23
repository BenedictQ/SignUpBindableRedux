//

import SwiftUI

struct SignUpEmail: View {
    @EnvironmentObject var store: RootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter Email Address",
                destination: SignUpPhoneNumber(),
                text: $store.state.signUpState.email,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct SignUpEmail_Previews: PreviewProvider {
    static var previews: some View {
        SignUpEmail()
        .environmentObject(RootStore())
    }
}
