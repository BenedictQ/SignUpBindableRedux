//

import SwiftUI

struct SingleStoreSignUpFirstName: View {
    @EnvironmentObject var store: SingleRootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter First Name",
                destination: SingleStoreSignUpLastName(),
                text: $store.state.signUpState.firstName,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct SingleStoreSignUpFirstName_Previews: PreviewProvider {
    static var previews: some View {
        SingleStoreSignUpFirstName()
        .environmentObject(SingleRootStore())
    }
}
