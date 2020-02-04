//

import Combine
import BindableSwiftUIRedux

final class RootStore: ReduxStore {
    typealias Reducer = RootReducer
    typealias State = RootState
    var state: RootState
    var objectWillChange = ObservableObjectPublisher()
    lazy var storedDispatch: Dispatch = {
        self.defaultDispatch($0)
    }

    init(state: RootState? = nil) {
        self.state = state ?? RootState()
    }
}
