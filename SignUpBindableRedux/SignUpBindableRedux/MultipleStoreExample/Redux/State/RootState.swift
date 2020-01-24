import BindableSwiftUIRedux
import Combine

final class RootState: ReduxState {
    @Published var signUpState = SignUpState()
    @Published var loginState = LoginState()
    @Published var isLoggedIn: Bool = false

    func initialize(store: SingleRootStore) {
        signUpState.initialize(with: store)

        loginState.objectWillChange.receive(subscriber: Subscribers.Sink(receiveCompletion: { _ in }) {
            self.objectWillChange.send()
        })

        signUpState.objectWillChange.receive(subscriber: Subscribers.Sink(receiveCompletion: { _ in }) {
            self.objectWillChange.send()
        })
    }
}
