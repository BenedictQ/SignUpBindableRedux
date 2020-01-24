import SwiftUI

struct SingleStoreRootView: View {
    @EnvironmentObject var store: SingleRootStore
    var body: some View {
        ZStack {
            if store.state.isLoggedIn {
                SingleStoreHome()
                    .transition(.scale)
            } else {
                SingleStoreLogin()
                    .transition(.scale)
                    .sheet(isPresented: $store.state.loginState.showRegistrationFlow) {
                        NavigationView {
                            SingleStoreSignUpFirstName()
                        }
                        .environmentObject(self.store)
                    }
            }
        }
    }
}

struct SingleStoreRootView_Previews: PreviewProvider {
    static var previews: some View {
        SingleStoreRootView()
        .environmentObject(SingleRootStore())
    }
}
