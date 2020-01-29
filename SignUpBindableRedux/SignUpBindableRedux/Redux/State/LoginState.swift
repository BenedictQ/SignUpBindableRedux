import BindableSwiftUIRedux
import Combine

struct LoginState: ReduxState {
    typealias Store = RootStore
    var recordedPIN: String = "111111"
    var showRegistrationFlow = false
}
