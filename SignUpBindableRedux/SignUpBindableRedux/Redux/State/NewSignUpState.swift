import BindableSwiftUIRedux
import Combine

//@available(iOS 13.0, *)
//struct SignUpState {
//    @RandomWrapper<ARootStore, String, SignUpUpdateFirstName> var firstName = ""
//
//    func accessProperty() {
//        _firstName
//    }
//}
//
//@propertyWrapper
//struct RandomWrapper<SomeConstraint: AReduxStore, State, Action: BindingUpdateAction> {
//    private var state: State
//
//    var wrappedValue: State {
//        get {
//            return state
//        }
//        set {
//            // don't set
//        }
//    }
//
//    var projectedValue: State {
//        get {
//            return state
//        }
//        set {
//            state = newValue
//        }
//    }
//
//    init(wrappedValue: State) {
//        state = wrappedValue
//    }
//}
//
//public protocol AReduxStore: ObservableObject where ObjectWillChangePublisher == ObservableObjectPublisher, Reducer.State == State, State.Store == Self {
//    associatedtype State: ReduxState
//    associatedtype Reducer: ReduxRootReducer
//    var state: State { get set }
//}
//
//extension AReduxStore {
//    public func initialize() -> Self {
//        state.initialize(store: self)
//        return self
//    }
//
//    public func dispatch<Action: BindingUpdateAction>(_ action: Action) {
//       state = Reducer.reduce(action, state: state)
//        // Inform SwiftUI that state has changed
//       objectWillChange.send()
//    }
//
//    public func dispatch(_ action: ReduxAction) {
//        state = Reducer.reduce(action, state: state)
//        // Inform SwiftUI that state has changed
//        objectWillChange.send()
//    }
//}
