import SwiftUI

struct RootView: View {
    @EnvironmentObject var store: RootStore
    var body: some View {
        ZStack {
            if store.state.isLoggedIn {
                Home()
                    .transition(.scale)
            } else {
                Login()
                    .transition(.scale)
                    .sheet(isPresented: $store.state.loginState.showRegistrationFlow) {
                        NavigationView {
                            SignUpFirstName()
                        }
                        .environmentObject(self.store)
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
