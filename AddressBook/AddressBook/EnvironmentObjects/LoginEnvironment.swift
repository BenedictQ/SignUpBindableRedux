//

import Foundation

final class LoginEnvironment: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var phone: String = ""
    @Published var recordedPIN: String = ""
    @Published var isLoggedIn: Bool = true
}
