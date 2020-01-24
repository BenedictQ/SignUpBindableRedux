import BindableSwiftUIRedux
import Combine

final class SingleStoreRootState: ReduxState {
    @Published var signUpState = SingleStoreSignUpState()
    @Published var loginState = SingleStoreLoginState()
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
