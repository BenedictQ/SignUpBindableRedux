import Foundation
import BindableSwiftUIRedux
import Combine

struct RootState: ReduxState {
    var signUpState = SignUpState()
    var loginState = LoginState()
    var isLoggedIn: Bool = false

    mutating func initialize(store: RootStore) {
        signUpState.initialize(store: store)
    }
}
