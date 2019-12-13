//

import SwiftUI

struct RootView: View {
    @State private var isLoggedIn: Bool = false
    var body: some View {
        ZStack {
            if isLoggedIn {
                Home()
                    .transition(.scale)
            } else {
                Login(isLoggedIn: $isLoggedIn)
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
