//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var loginState: LoginEnvironment
    var body: some View {
        ZStack {
            if loginState.isLoggedIn {
                Home()
                    .transition(.scale)
            } else {
                Login()
                    .transition(.scale)
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
