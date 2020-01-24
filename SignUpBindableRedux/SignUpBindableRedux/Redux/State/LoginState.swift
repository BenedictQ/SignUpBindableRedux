import BindableSwiftUIRedux
import Combine

final class LoginState: ReduxState {
    typealias Store = RootStore
    var recordedPIN: String = "111111"
    var showRegistrationFlow = false
}
