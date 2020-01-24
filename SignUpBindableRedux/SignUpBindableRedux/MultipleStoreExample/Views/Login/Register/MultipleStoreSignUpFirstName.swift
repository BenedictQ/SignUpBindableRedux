//

import SwiftUI

struct MultipleStoreSignUpFirstName: View {
    @EnvironmentObject var store: RootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter First Name",
                destination: MultipleStoreSignUpLastName(),
                text: $store.state.signUpState.firstName,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct MultipleStoreSignUpFirstName_Previews: PreviewProvider {
    static var previews: some View {
        MultipleStoreSignUpFirstName()
        .environmentObject(SignUpState())
    }
}
