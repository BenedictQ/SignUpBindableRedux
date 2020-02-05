import SwiftUIBindableRedux
import Combine

final class SignUpState: ReduxState {
    @ReduxBindable<RootStore, String, SignUpUpdateFirstName> var firstName: String = ""
    @ReduxBindable<RootStore, String, SignUpUpdateLastName> var lastName: String = ""
    @ReduxBindable<RootStore, String, SignUpUpdateEmail> var email: String = ""
    @ReduxBindable<RootStore, String, SignUpUpdatePhoneNumber> var phone: String = ""
    @ReduxBindable<RootStore, String, SignUpUpdatePIN> var pin: String = ""

    private var signUpStateSinkToRecordedPIN: AnyCancellable?

    func initialize(store: RootStore) {
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

    func deepcopy() -> SignUpState {
        let newState = SignUpState()
        newState._firstName = _firstName
        newState._lastName = _lastName
        newState._email = _email
        newState._phone = _phone
        newState._pin = _pin
        newState.signUpStateSinkToRecordedPIN = signUpStateSinkToRecordedPIN
        return newState
    }
}
