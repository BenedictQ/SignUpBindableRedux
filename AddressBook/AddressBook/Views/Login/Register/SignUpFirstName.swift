//

import SwiftUI

//protocol FirstNameState {
//    var firstName: String { get set }
//}
//
//protocol FirstNameEntry where Self: View {
//    associatedtype EntryState: ObservableObject & FirstNameState
//    var state: EnvironmentObject<EntryState> { get set }
//    var shouldNavigateToNextScreen: State<Bool?> { get set}
//}
//
//extension View where Self: FirstNameEntry {
//    var body: some View {
//        NavigationView {
//            Background.login {
//                NavigatingTextEntry(
//                    placeholder: "Enter First Name",
//                    destination: SignUpLastName(),
//                    text: state.projectedValue.firstName,
//                    shouldNavigateToNextScreen: shouldNavigateToNextScreen.projectedValue
//                )
//            }
//        }
//    }
//}

struct SignUpFirstName: View {
    @EnvironmentObject var store: RootStore
    @State private var shouldNavigateToNextScreen: Bool? = false
    var body: some View {
        Background.login {
            NavigatingTextEntry(
                placeholder: "Enter First Name",
                destination: SignUpLastName(),
                text: $store.state.signUpState.firstName,
                shouldNavigateToNextScreen: $shouldNavigateToNextScreen
            )
        }
    }
}

struct SignUpFirstName_Previews: PreviewProvider {
    static var previews: some View {
        SignUpFirstName()
        .environmentObject(SignUpState())
    }
}
