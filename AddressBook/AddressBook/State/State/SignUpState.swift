import BindableSwiftUIRedux
import Combine

final class SignUpState: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var phone: String = ""
    @Published var pin: String = ""
}
