//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var store: Store
    var body: some View {
        ZStack {
            if store.isLoggedIn {
                Home()
                    .transition(.scale)
            } else {
                Login(isLoggedIn: $store.isLoggedIn)
                    .environmentObject(store.loginState)
                    .transition(.scale)
                    .sheet(isPresented: $store.loginState.showRegistrationFlow) {
                        SignUpFirstName()
                            .environmentObject(self.store.signUpState)
                    }
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
