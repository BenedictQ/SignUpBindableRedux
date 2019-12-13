//

import SwiftUI

struct Login: View {
    @EnvironmentObject var loginState: LoginEnvironment
    @State private var pin = ""
    @State private var showRegistration = false
    @Binding var isLoggedIn: Bool

    var body: some View {
        Background.login {
            VStack {
                SecureField("Enter PIN", text: self.$pin) {
                    withAnimation(.linear) {
                        self.isLoggedIn.toggle()
                    }
                }
                .multilineTextAlignment(.center)
                .font(.title)
                .padding()
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
            Login(isLoggedIn: $isLoggedIn)
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            Login(isLoggedIn: $isLoggedIn)
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
        }
    }
}
