//

import SwiftUI

struct MultipleStoreSignUpPhoneNumber: View {
    @EnvironmentObject var store: RootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter Phone Number",
                destination: MultipleStoreSignUpPIN(),
                text: $store.state.signUpState.phone,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct MultipleStoreSignUpPhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        MultipleStoreSignUpEmail()
        .environmentObject(RootStore())
    }
}
