import BindableSwiftUIRedux
import Combine

final class SingleStoreLoginState: ObservableObject {
    @Published var recordedPIN: String = "111111"
    @Published var showRegistrationFlow = false
}
