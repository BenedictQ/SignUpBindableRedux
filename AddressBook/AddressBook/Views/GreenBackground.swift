//

import SwiftUI

struct Background {
    static func generate<Views : View>(
        withColor color: Color,
        @ViewBuilder views: () -> Views
    ) -> some View {
        ZStack {
            color.opacity(0.3).edgesIgnoringSafeArea(.all)
            views()
        }
    }

    static func login<Views : View>(@ViewBuilder views: () -> Views) -> some View {
        generate(withColor: .green) {
            views()
        }
    }
}
