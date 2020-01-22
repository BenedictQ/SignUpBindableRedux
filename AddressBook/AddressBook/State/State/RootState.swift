import BindableSwiftUIRedux
import Combine

final class RootState: ReduxState {
    var signUpState = SignUpState()
    @Published var loginState = LoginState()
    @Published var isLoggedIn: Bool = false

    func initialize(store: RootStore) {
        signUpStateSinkToRecordedPIN = signUpState.$pin.filter {
            $0.count > 0
        }.sink {
            self.loginState.recordedPIN = $0
        }

        loginState.objectWillChange.receive(subscriber: Subscribers.Sink(receiveCompletion: { _ in }) {
            self.objectWillChange.send()
        })
    }

    private var signUpStateSinkToRecordedPIN: AnyCancellable?
}
