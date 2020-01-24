//

import Combine
import BindableSwiftUIRedux

final class RootStore: ReduxStore {
    typealias Reducer = RootReducer
    var state = RootState()
    var objectWillChange = ObservableObjectPublisher()
}
