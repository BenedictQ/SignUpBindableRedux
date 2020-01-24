//

import SwiftUI

struct MultipleStoreSignUpLastName: View {
    @EnvironmentObject var store: RootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter Last Name",
                destination: MultipleStoreSignUpEmail(),
                text: $store.state.signUpState.lastName,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct MultipleStoreSignUpLastName_Previews: PreviewProvider {
    static var previews: some View {
        MultipleStoreSignUpLastName()
        .environmentObject(RootStore())
    }
}
