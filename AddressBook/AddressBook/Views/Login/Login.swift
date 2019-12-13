//

import SwiftUI

struct Login: View {
    @State private var pin = ""
    @Binding var isLoggedIn: Bool

    var body: some View {
        ZStack {
            Color.green
                .opacity(0.3)
                .edgesIgnoringSafeArea(.all)
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
            VStack {
                SecureField("PIN", text: self.$pin) {
                    withAnimation(.linear) {
                        self.isLoggedIn.toggle()
                    }
                }
                    .multilineTextAlignment(.center)
                    .font(.title)
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
