//

import SwiftUI

struct SignUpFirstName: View {
    @EnvironmentObject var store: RootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter First Name",
                destination: SignUpLastName(),
                text: $store.state.signUpState.firstName,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct SignUpFirstName_Previews: PreviewProvider {
    static var previews: some View {
        SignUpFirstName()
        .environmentObject(SignUpState())
    }
}
