//

import Combine
import BindableSwiftUIRedux

final class MultipleRootStore: ReduxRootStore {
    typealias Reducer = RootReducer
    var state = RootState()
    var subscribers = Set<AnyCancellable>()
    var objectWillChange = ObservableObjectPublisher()
}
