import BindableSwiftUIRedux

enum SignUpReducer: ReduxRootReducer {
    static func reduce<Action: BindingUpdateAction>(_ action: Action, store: SignUpStore) {
        switch action {
        case let action as SignUpUpdateFirstName:
            store.state.$firstName = action.state
        case let action as SignUpUpdateLastName:
            store.state.$lastName = action.state
        case let action as SignUpUpdateEmail:
            store.state.$email = action.state
        case let action as SignUpUpdatePhoneNumber:
            store.state.$phone = action.state
        case let action as SignUpUpdatePIN:
            store.state.$pin = action.state
        default:
            return
        }
    }

    static func reduce(_ action: ReduxAction, store: SignUpStore) {
        return
    }
}
