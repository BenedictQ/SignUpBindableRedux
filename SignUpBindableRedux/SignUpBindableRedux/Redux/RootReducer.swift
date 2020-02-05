import SwiftUIBindableRedux

enum RootReducer: ReduxRootReducer {
    static func reduce(_ action: ReduxAction, state: RootState) -> RootState {
        let newState = state.deepcopy()

        switch action {
        case let action as UpdateIsLoggedIn:
            newState.isLoggedIn = action.isLoggedIn
        case let action as UpdateShowRegistrationFlow:
            newState.loginState.showRegistrationFlow = action.shouldShowRegistrationFlow
        case let action as UpdateRecordedPIN:
            newState.loginState.recordedPIN = action.pin
        case let action as SignUpUpdateFirstName:
            newState.signUpState.$firstName = action.state
        case let action as SignUpUpdateLastName:
            newState.signUpState.$lastName = action.state
        case let action as SignUpUpdateEmail:
            newState.signUpState.$email = action.state
        case let action as SignUpUpdatePhoneNumber:
            newState.signUpState.$phone = action.state
        case let action as SignUpUpdatePIN:
            newState.signUpState.$pin = action.state
        default:
            break
        }

        return newState
    }
}
