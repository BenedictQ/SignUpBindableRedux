import BindableSwiftUIRedux
import Combine

 // For want of a better name
protocol ReduxSubState: ObservableObject {
    associatedtype Store: ReduxSubStore
    associatedtype RootStoreType: ReduxRootStore

    func initialize(store: Store, rootStore: RootStore)
    init()
}
