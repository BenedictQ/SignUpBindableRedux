import SwiftUIBindableRedux

enum LoginReducer {
    static func reduce(_ action: ReduxAction, state: LoginState) -> LoginState {
        let newState = state.deepcopy()

        switch action {
        case let action as UpdateShowRegistrationFlow:
            newState.showRegistrationFlow = action.shouldShowRegistrationFlow
        case let action as UpdateRecordedPIN:
            newState.recordedPIN = action.pin
        default:
            break
        }

        return newState
    }
}
