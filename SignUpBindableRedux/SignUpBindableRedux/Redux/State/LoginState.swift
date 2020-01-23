import BindableSwiftUIRedux
import Combine

final class LoginState: ObservableObject {
    @Published var recordedPIN: String = "111111"
    @Published var showRegistrationFlow = false
}
