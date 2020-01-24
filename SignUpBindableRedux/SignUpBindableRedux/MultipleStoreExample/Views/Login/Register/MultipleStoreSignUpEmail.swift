//

import SwiftUI

struct MultipleStoreSignUpEmail: View {
    @EnvironmentObject var store: RootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter Email Address",
                destination: MultipleStoreSignUpPhoneNumber(),
                text: $store.state.signUpState.email,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct MultipleStoreSignUpEmail_Previews: PreviewProvider {
    static var previews: some View {
        MultipleStoreSignUpEmail()
        .environmentObject(RootStore())
    }
}
