import SwiftUIBindableRedux
import Combine

final class LoginState: ReduxState {
    typealias Store = RootStore
    var recordedPIN: String = "111111"
    var showRegistrationFlow = false

    func deepcopy() -> LoginState {
        let newState = LoginState()
        newState.recordedPIN = recordedPIN
        newState.showRegistrationFlow = showRegistrationFlow
        return newState
    }
}
