import Foundation
import BindableSwiftUIRedux
import Combine

final class RootState: ReduxRootState {
    @Published var signUpState = SignUpState()
    @Published var loginState = LoginState()
    @Published var isLoggedIn: Bool = false

    func initialize(store: RootStore) {
        signUpState.initialize(with: store)

        loginState.objectWillChange.receive(subscriber: Subscribers.Sink(receiveCompletion: { _ in }) {
            self.objectWillChange.send()
        })

        signUpState.objectWillChange.receive(subscriber: Subscribers.Sink(receiveCompletion: { _ in }) {
            self.objectWillChange.send()
        })
    }

    func deepcopy() -> RootState {
        let state = RootState()
        state.signUpState = signUpState
        state.loginState = loginState
        state.isLoggedIn = isLoggedIn
        return state
    }
}
