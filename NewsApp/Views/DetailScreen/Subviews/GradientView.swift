import SwiftUI

struct GradientView: View{
    var body: some View{
        GeometryReader { _ in
            LinearGradient(
                colors: [Color(.systemBackground), .clear],
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: SizeContains.sizeHeight / 4)
            .offset(y: -SizeContains.sizeHeight / 4 )
        }
    }
}
