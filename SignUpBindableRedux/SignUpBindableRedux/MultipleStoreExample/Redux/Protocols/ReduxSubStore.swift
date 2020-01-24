import BindableSwiftUIRedux

protocol ReduxSubStore: ReduxStore {
    var store: ReduxRootStore { get set }
}

extension ReduxStore where Self: ReduxSubStore {
    func initialize() -> Self {
        state.initialize(store: self)

        // Currently Combine doesn't support nested ObservableObjects
        subscribers.insert(
            self.state.objectWillChange
                .receive(on: DispatchQueue.main)
                .sink { _ in
                    self.objectWillChange.send()
        })

        return self
    }
}
