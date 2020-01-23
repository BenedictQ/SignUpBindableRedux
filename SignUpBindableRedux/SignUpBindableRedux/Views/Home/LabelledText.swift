//

import SwiftUI

struct LabelledText: View {
    var label: String
    @Binding var value: String
    var body: some View {
        HStack {
            Text("\(label):")
            Text(value)
        }
        .padding(.all, 3)
        .border(Color.black)
    }
}

struct LabelledText_Previews: PreviewProvider {
    @State static var value = "Value"
    static var previews: some View {
        LabelledText(label: "Field", value: $value)
    }
}
