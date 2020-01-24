//

import SwiftUI

struct SingleStoreSignUpPhoneNumber: View {
    @EnvironmentObject var store: SingleRootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter Phone Number",
                destination: SingleStoreSignUpPIN(),
                text: $store.state.signUpState.phone,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct SingleStoreSignUpPhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        SingleStoreSignUpEmail()
        .environmentObject(SingleRootStore())
    }
}
