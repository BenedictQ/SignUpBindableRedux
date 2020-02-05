import SwiftUIBindableRedux

enum RootReducer: ReduxRootReducer {
    static func reduce(_ action: ReduxAction, state: RootState) -> RootState {
        let newState = state.deepcopy()

        newState.signUpState = SignUpReducer.reduce(action, state: newState.signUpState)
        newState.loginState = LoginReducer.reduce(action, state: newState.loginState)

        switch action {
        case let action as UpdateIsLoggedIn:
            newState.isLoggedIn = action.isLoggedIn
        default:
            break
        }

        return newState
    }
}
