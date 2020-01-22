//

import SwiftUI

struct Home: View {
    @EnvironmentObject var store: Store
    var body: some View {
        Background.generate(withColor: .blue) {
            ZStack {
                VStack {
                    HStack {
                        Button(action: {
                            withAnimation {
                                self.store.isLoggedIn = false
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
                Text("Home")
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
