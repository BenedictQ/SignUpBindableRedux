# SignUpBindableRedux
This is an example project demonstrating how to use the [SwiftUIBindableRedux](https://github.com/BenedictQ/SwiftUI-Bindable-Redux) package

## The app
The example is a sign up and login app. The app has a `RootView` which starts as the `Login` view, and switches to the `Home` view on a successful login (the default password is "111111").

The user can optionally register to enter more personal details (don't worry, they're not persisted in any way!). Clicking the 'Register' button will open a modal flow of screens containing text fields, which update the personal details.

This example app demonstrates how to create a project with multiple embedded ReduxState types, and sub-reducers.

It also demonstrates how using the `@ReduxBindable` for databinding can work. Typing in a register field will update the store in a declarative way by binding to the Redux state, without having to wait for a defined user action such as tapping enter to run some imperative code.
