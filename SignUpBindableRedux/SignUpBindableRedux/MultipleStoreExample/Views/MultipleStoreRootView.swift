import SwiftUI

struct MultipleStoreRootView: View {
    @EnvironmentObject var store: RootStore
    var body: some View {
        ZStack {
            if store.state.isLoggedIn {
                MultipleStoreHome()
                    .transition(.scale)
            } else {
                MultipleStoreLogin()
                    .transition(.scale)
                    .sheet(isPresented: $store.state.loginState.showRegistrationFlow) {
                        NavigationView {
                            MultipleStoreSignUpFirstName()
                        }
                        .environmentObject(self.store)
                    }
            }
        }
    }
}

struct MultipleStoreRootView_Previews: PreviewProvider {
    static var previews: some View {
        MultipleStoreRootView()
    }
}
