//

import SwiftUI

struct SingleStoreSignUpPIN: View {
    @EnvironmentObject var store: SingleRootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            VStack {
                Text("Enter PIN")
                SecureField("Enter PIN", text: $store.state.signUpState.pin)
                .multilineTextAlignment(.center)
            }
        }
    }
}

struct SingleStoreSignUpPIN_Previews: PreviewProvider {
    static var previews: some View {
        SingleStoreSignUpPIN()
        .environmentObject(SingleRootStore())
    }
}
