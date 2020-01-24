//

import SwiftUI

struct MultipleStoreHome: View {
    @EnvironmentObject var store: RootStore
    var body: some View {
        Background.generate(withColor: .blue) {
            ZStack {
                VStack {
                    HStack {
                        Button(action: {
                            withAnimation {
                                let update = UpdateIsLoggedIn(isLoggedIn: false)
                                self.store.dispatch(update)
                            }
                        }) {
                            Image(systemName: "arrow.left.square")
                                .font(.largeTitle)
                        }
                        .padding()
                        Spacer()
                    }
                    Spacer()
                }
                VStack {
                    LabelledText(label: "First Name",
                                 value: $store.state.signUpState.firstName)

                    LabelledText(label: "Last Name",
                                 value: $store.state.signUpState.lastName)

                    LabelledText(label: "Email",
                                 value: $store.state.signUpState.email)
                }
            }
        }
    }
}

struct MultipleStoreHome_Previews: PreviewProvider {
    static var previews: some View {
        MultipleStoreHome()
        .environmentObject(RootStore())
    }
}
