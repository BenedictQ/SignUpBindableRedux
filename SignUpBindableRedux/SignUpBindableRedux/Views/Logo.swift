//

import SwiftUI

struct Logo: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .foregroundColor(.pink)
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                Path { path in
                    let width = geometry.size.width
                    let height = geometry.size.height
                    let circleSize = min(width, height)
                    let excessHeight = height - circleSize
                    let circleBottom = height - excessHeight / 2
                    let circleTop = excessHeight
                    let xcenter = width / 2
                    path.move(to: CGPoint(x: xcenter - circleSize * 0.233,
                                          y: circleBottom - circleSize * 0.2))
                    path.addLine(to: CGPoint(x: xcenter - circleSize * 0.3,
                                             y: circleBottom - circleSize * 0.133))
                    path.addLine(to: CGPoint(x: xcenter,
                                             y: circleTop + circleSize * 0.1))
                    path.addLine(to: CGPoint(x: xcenter + circleSize * 0.233,
                                             y: circleBottom - circleSize * 0.233))
                    path.addLine(to: CGPoint(x: xcenter + circleSize * 0.2,
                                             y: circleBottom - circleSize * 0.233))
                    path.addLine(to: CGPoint(x: xcenter,
                                             y: circleTop + circleSize * 0.166))
                }

                Path { path in
                    let width = geometry.size.width
                    let height = geometry.size.height
                    let circleSize = min(width, height)
                    let excessHeight = height - circleSize
                    let circleBottom = height - excessHeight / 2
                    let circleTop = excessHeight
                    let xcenter = width / 2

                    path.move(to: CGPoint(x: xcenter + circleSize * 0.133,
                                          y: circleBottom - circleSize * 0.5))
                    path.addLine(to: CGPoint(x: xcenter - circleSize * 0.133,
                                             y: circleBottom - circleSize * 0.5))
                    path.addLine(to: CGPoint(x: xcenter - circleSize * 0.166,
                                             y: circleBottom - circleSize * 0.433))
                    path.addLine(to: CGPoint(x: xcenter + circleSize * 0.166,
                                             y: circleBottom - circleSize * 0.433))
                }
            }
        }
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
