import Combine
import BindableSwiftUIRedux

final class SignUpStore: ReduxSubStore {
    typealias Reducer = SignUpReducer
    var state = SignUpState()
    var subscribers = Set<AnyCancellable>()
    var objectWillChange = ObservableObjectPublisher()
}
