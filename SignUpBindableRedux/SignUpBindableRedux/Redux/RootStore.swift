//

import Combine
import BindableSwiftUIRedux

final class RootStore: ReduxStore {
    typealias Reducer = RootReducer
    typealias State = RootState
    var state = RootState()
    var objectWillChange = ObservableObjectPublisher()
}

//final class ARootStore: AReduxStore {
//    typealias Reducer = RootReducer
//    var state = RootState()
//    var objectWillChange = ObservableObjectPublisher()
//}
