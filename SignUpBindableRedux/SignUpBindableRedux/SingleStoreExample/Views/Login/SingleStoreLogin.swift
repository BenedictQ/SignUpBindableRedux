//

import SwiftUI
import Combine

struct SingleStoreLogin: View {
    @EnvironmentObject var store: SingleRootStore
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

struct SingleStoreLogin_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SingleStoreLogin()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .environmentObject(SingleRootStore().initialize())
            SingleStoreLogin()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .environmentObject(SingleRootStore().initialize())
        }
    }
}
