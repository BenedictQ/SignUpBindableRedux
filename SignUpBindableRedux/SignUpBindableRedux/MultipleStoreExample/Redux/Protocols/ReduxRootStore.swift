protocol ReduxRootStore {
    var subStores: [ReduxSubStore] { get set }
}

extension ReduxRootStore {
    public func dispatch<Action: BindingUpdateAction>(_ action: Action) {
        Reducer.reduce(action, store: self)
    }

    public func dispatch(_ action: ReduxAction) {
        Reducer.reduce(action, store: self)
    }
}
