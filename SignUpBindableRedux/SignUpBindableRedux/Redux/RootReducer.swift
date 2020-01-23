import BindableSwiftUIRedux

enum RootReducer: ReduxRootReducer {
    static func reduce<Action: BindingUpdateAction>(_ action: Action, store: RootStore) {
        switch action {
        case let action as SignUpUpdateFirstName:
            store.state.signUpState.$firstName = action.state
        case let action as SignUpUpdateLastName:
            store.state.signUpState.$lastName = action.state
        case let action as SignUpUpdateEmail:
            store.state.signUpState.$email = action.state
        case let action as SignUpUpdatePhoneNumber:
            store.state.signUpState.$phone = action.state
        case let action as SignUpUpdatePIN:
            store.state.signUpState.$pin = action.state
        default:
            return
        }
    }

    static func reduce(_ action: ReduxAction, store: RootStore) {
        switch action {
        case let action as UpdateIsLoggedIn:
            store.state.isLoggedIn = action.isLoggedIn
        case let action as UpdateShowRegistrationFlow:
            store.state.loginState.showRegistrationFlow = action.shouldShowRegistrationFlow
        case let action as UpdateRecordedPIN:
            store.state.loginState.recordedPIN = action.pin
        default:
            return
        }
    }
}
