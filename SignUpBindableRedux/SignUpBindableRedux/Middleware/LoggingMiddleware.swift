import BindableSwiftUIRedux

enum LoggingMiddleware: Middleware {
    typealias Store = RootStore
    static var middleware: Store.Middleware {
        return { (dispatch: Dispatch, getState: @escaping () -> RootState) in
            return { (next: @escaping Dispatch) in
                return { (action: ReduxAction) in
                    print("Logging state")
                    print(getState())
                    let action = next(action)
                    print(getState())
                    print("End logging state")
                    return action
                }
            }
        }
    }
}
