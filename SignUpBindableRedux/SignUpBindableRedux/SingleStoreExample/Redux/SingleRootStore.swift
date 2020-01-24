//

import Combine
import BindableSwiftUIRedux

final class SingleRootStore: ReduxStore {
    typealias Reducer = SingleStoreRootReducer
    var state = SingleStoreRootState()
    var subscribers = Set<AnyCancellable>()
    var objectWillChange = ObservableObjectPublisher()
}
