import BindableSwiftUIRedux
import Combine

final class SignUpState: ObservableObject, ReduxSubState {
    @ReduxBindable<SignUpStore, String, SignUpUpdateFirstName> var firstName: String = ""
    @ReduxBindable<SignUpStore, String, SignUpUpdateLastName> var lastName: String = ""
    @ReduxBindable<SignUpStore, String, SignUpUpdateEmail> var email: String = ""
    @ReduxBindable<SignUpStore, String, SignUpUpdatePhoneNumber> var phone: String = ""
    @ReduxBindable<SignUpStore, String, SignUpUpdatePIN> var pin: String = ""

    private var signUpStateSinkToRecordedPIN: AnyCancellable?
    var store: SignUpStore!
    var rootStore: MultipleRootStore!

    func initialize(store: SignUpStore, rootStore: MultipleRootStore) {
        self.store = store
        _firstName.store = store
        _lastName.store = store
        _email.store = store
        _phone.store = store
        _pin.store = store

//        signUpStateSinkToRecordedPIN = _pin.publisher
//            .filter {
//                $0.count > 0
//        }
//        .sink {
//            let update = UpdateRecordedPIN(pin: $0)
//            store.dispatch(update)
//        }
    }
}
