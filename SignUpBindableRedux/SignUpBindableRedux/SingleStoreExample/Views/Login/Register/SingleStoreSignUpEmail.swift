//

import SwiftUI

struct SingleStoreSignUpEmail: View {
    @EnvironmentObject var store: SingleRootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter Email Address",
                destination: SingleStoreSignUpPhoneNumber(),
                text: $store.state.signUpState.email,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct SingleStoreSignUpEmail_Previews: PreviewProvider {
    static var previews: some View {
        SingleStoreSignUpEmail()
        .environmentObject(SingleRootStore())
    }
}
