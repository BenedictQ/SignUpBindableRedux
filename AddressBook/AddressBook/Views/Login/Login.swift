//

import SwiftUI

struct Login: View {
    @EnvironmentObject var loginState: LoginEnvironment
    @State private var pin = ""
    @State private var showRegistration = false
    @State private var shouldDisplayErrorMessage = false

    var body: some View {
        Background.login {
            VStack {
                SecureField("Enter PIN", text: self.$pin) {
                    if self.loginState.recordedPIN != "" && self.pin == self.loginState.recordedPIN {
                        withAnimation(.linear) {
                            self.loginState.isLoggedIn.toggle()
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
                    self.showRegistration.toggle()
                }
                .padding()
                .sheet(isPresented: $showRegistration) {
                    SignUpFirstName()
                        .environmentObject(self.loginState)
                }
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
    @State static var isLoggedIn = true
    static var previews: some View {
        Group {
            Login()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            Login()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
        }
    }
}
