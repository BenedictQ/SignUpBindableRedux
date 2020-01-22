//

import Combine

final class Store: ObservableObject {
    var signUpState = SignUpState()
    @Published var loginState = LoginState()
    @Published var isLoggedIn: Bool = false

    private var signUpStateSinkToRecordedPIN: AnyCancellable?

    func initialize() -> Store {
        signUpStateSinkToRecordedPIN = signUpState.$pin.filter {
            $0.count > 0
        }.sink {
            self.loginState.recordedPIN = $0
        }

        loginState.objectWillChange.receive(subscriber: Subscribers.Sink(receiveCompletion: { _ in }) {
            self.objectWillChange.send()
        })

        return self
    }
}

final class LoginState: ObservableObject {
    @Published var recordedPIN: String = "111111"
    @Published var showRegistrationFlow = false
}

final class SignUpState: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var phone: String = ""
    @Published var pin: String = ""
}
