//

import SwiftUI

struct SignUpEmail: View {
    @EnvironmentObject var loginState: LoginEnvironment
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter Email Address",
                destination: SignUpPhoneNumber(),
                text: $loginState.email,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct SignUpEmail_Previews: PreviewProvider {
    static var previews: some View {
        SignUpEmail()
        .environmentObject(LoginEnvironment())
    }
}
