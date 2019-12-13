//

import SwiftUI

struct Home: View {
    var body: some View {
        Background.generate(withColor: .blue) {
            Text("Home")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
