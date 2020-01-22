//

import SwiftUI

struct SignUpPIN: View {
    @EnvironmentObject var loginState: SignUpState
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            VStack {
                Text("Enter PIN")
                SecureField("Enter PIN", text: $loginState.pin)
                .multilineTextAlignment(.center)
            }
        }
    }
}

struct SignUpPIN_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPIN()
        .environmentObject(RootStore())
    }
}
