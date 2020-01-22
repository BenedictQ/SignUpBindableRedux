import SwiftUI

struct RootView: View {
    @EnvironmentObject var store: RootStore
    var body: some View {
        ZStack {
            if store.state.isLoggedIn {
                Home()
                    .transition(.scale)
            } else {
                Login(isLoggedIn: $store.state.isLoggedIn)
                    .environmentObject(store.state.loginState)
                    .transition(.scale)
                    .sheet(isPresented: $store.state.loginState.showRegistrationFlow) {
                        SignUpFirstName()
                            .environmentObject(self.store.state.signUpState)
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
