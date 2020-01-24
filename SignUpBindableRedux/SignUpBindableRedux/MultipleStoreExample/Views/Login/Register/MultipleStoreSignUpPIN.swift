//

import SwiftUI

struct MultipleStoreSignUpPIN: View {
    @EnvironmentObject var store: RootStore
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

struct MultipleStoreSignUpPIN_Previews: PreviewProvider {
    static var previews: some View {
        MultipleStoreSignUpPIN()
        .environmentObject(RootStore())
    }
}
