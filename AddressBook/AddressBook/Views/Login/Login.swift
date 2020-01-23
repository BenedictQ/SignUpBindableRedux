//

import SwiftUI
import Combine

struct Login: View {
    @EnvironmentObject var store: RootStore
    @State private var pin = ""
    @State private var shouldDisplayErrorMessage = false

    var body: some View {
        Background.login {
            VStack {
                SecureField("Enter PIN", text: self.$pin) {
                    if self.store.state.loginState.recordedPIN != "" && self.pin == self.store.state.loginState.recordedPIN {
                        withAnimation(.linear) {
                            let update = UpdateIsLoggedIn(isLoggedIn: true)
                            self.store.dispatch(update)
                        }
                    } else {
                        self.shouldDisplayErrorMessage = true
                    }
                }
                .multilineTextAlignment(.center)
                .font(.title)
                .padding()

                if shouldDisplayErrorMessage {
                    Text("Sorry that's no the right pin. Please try again, or sign up if you haven't already.")
                        .padding()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.red)
                }

                Button("Sign up") {
                    let update = UpdateShowRegistrationFlow(shouldShowRegistrationFlow: true)
                    self.store.dispatch(update)
                }
                .padding()
            }
            VStack {
                Logo()
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding([.top])
                Text("Please login")
                    .padding()
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Login()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .environmentObject(RootStore().initialize())
            Login()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .environmentObject(RootStore().initialize())
        }
    }
}
