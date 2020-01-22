//

import SwiftUI

struct SignUpLastName: View {
    @EnvironmentObject var loginState: SignUpState
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter Last Name",
                destination: SignUpEmail(),
                text: $loginState.lastName,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct SignUpLastName_Previews: PreviewProvider {
    static var previews: some View {
        SignUpLastName()
        .environmentObject(Store())
    }
}
