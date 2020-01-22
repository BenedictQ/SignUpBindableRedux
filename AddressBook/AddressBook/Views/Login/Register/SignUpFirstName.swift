//

import SwiftUI

struct SignUpFirstName: View {
    @EnvironmentObject var loginState: SignUpState
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        NavigationView {
            Background.login {
                NavigatingTextEntry(
                    placeholder: "Enter First Name",
                    destination: SignUpLastName(),
                    text: $loginState.firstName,
                    shouldNavigateToNextScreen: $shouldNavigateToNextScreen
                )
            }
        }
    }
}

struct SignUpFirstName_Previews: PreviewProvider {
    static var previews: some View {
        SignUpFirstName()
        .environmentObject(SignUpState())
    }
}
