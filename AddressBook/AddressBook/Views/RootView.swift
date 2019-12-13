//

import SwiftUI

struct RootView: View {
    @State private var isLoggedIn: Bool = false
    var body: some View {
        Group {
            if isLoggedIn {
                Home()
                    .transition(.slide)
            } else {
                Login(isLoggedIn: $isLoggedIn)
                    .transition(.slide)
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
