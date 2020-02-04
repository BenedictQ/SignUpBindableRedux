import BindableSwiftUIRedux

enum LoggingMiddleware {
    typealias Dispatch = RootStore.Dispatch
    typealias DispatchWrapper = RootStore.DispatchWrapper
    static var middleware: RootStore.Middleware {
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
