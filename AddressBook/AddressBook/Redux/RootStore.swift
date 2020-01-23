//

import Combine
import BindableSwiftUIRedux

final class RootStore: ReduxStore {
    typealias Reducer = RootReducer
    var state = RootState()
    var subscribers = Set<AnyCancellable>()
    var objectWillChange = ObservableObjectPublisher()
}
