import Foundation
import SwiftUIBindableRedux
import Combine

final class RootState: ReduxRootState {
    var signUpState = SignUpState()
    var loginState = LoginState()
    var isLoggedIn: Bool = false

    func initialize(store: RootStore) {
        signUpState.initialize(store: store)
    }

    func deepcopy() -> RootState {
        let state = RootState()
        state.signUpState = signUpState
        state.loginState = loginState
        state.isLoggedIn = isLoggedIn
        return state
    }
}
