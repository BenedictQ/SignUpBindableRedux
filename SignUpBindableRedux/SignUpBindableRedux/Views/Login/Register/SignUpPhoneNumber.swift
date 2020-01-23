//

import SwiftUI

struct SignUpPhoneNumber: View {
    @EnvironmentObject var store: RootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter Phone Number",
                destination: SignUpPIN(),
                text: $store.state.signUpState.phone,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct SignUpPhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        SignUpEmail()
        .environmentObject(RootStore())
    }
}
