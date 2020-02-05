import SwiftUIBindableRedux

enum SignUpReducer {
    static func reduce(_ action: ReduxAction, state: SignUpState) -> SignUpState {
        let newState = state.deepcopy()

        switch action {
        case let action as SignUpUpdateFirstName:
            newState.$firstName = action.state
        case let action as SignUpUpdateLastName:
            newState.$lastName = action.state
        case let action as SignUpUpdateEmail:
            newState.$email = action.state
        case let action as SignUpUpdatePhoneNumber:
            newState.$phone = action.state
        case let action as SignUpUpdatePIN:
            newState.$pin = action.state
        default:
            break
        }

        return newState
    }
}
