//

import SwiftUI

struct SingleStoreSignUpLastName: View {
    @EnvironmentObject var store: SingleRootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter Last Name",
                destination: SingleStoreSignUpEmail(),
                text: $store.state.signUpState.lastName,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct SingleStoreSignUpLastName_Previews: PreviewProvider {
    static var previews: some View {
        SingleStoreSignUpLastName()
        .environmentObject(SingleRootStore())
    }
}
