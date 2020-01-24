import BindableSwiftUIRedux
import Combine

final class SingleStoreSignUpState: ObservableObject {
    @ReduxBindable<SingleRootStore, String, SignUpUpdateFirstName> var firstName: String = ""
    @ReduxBindable<SingleRootStore, String, SignUpUpdateLastName> var lastName: String = ""
    @ReduxBindable<SingleRootStore, String, SignUpUpdateEmail> var email: String = ""
    @ReduxBindable<SingleRootStore, String, SignUpUpdatePhoneNumber> var phone: String = ""
    @ReduxBindable<SingleRootStore, String, SignUpUpdatePIN> var pin: String = ""

    private var signUpStateSinkToRecordedPIN: AnyCancellable?
    private var store: SingleRootStore!

    func initialize(with store: SingleRootStore) {
        self.store = store
        _firstName.store = store
        _lastName.store = store
        _email.store = store
        _phone.store = store
        _pin.store = store

        signUpStateSinkToRecordedPIN = _pin.publisher
            .filter {
                $0.count > 0
        }
        .sink {
            let update = UpdateRecordedPIN(pin: $0)
            store.dispatch(update)
        }
    }
}
