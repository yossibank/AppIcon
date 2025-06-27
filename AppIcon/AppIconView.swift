import SwiftUI

struct AppIconView: View {
    private let iconSystemName: String
    private let iconColor: Color

    init(
        iconSystemName: String,
        iconColor: Color
    ) {
        self.iconSystemName = iconSystemName
        self.iconColor = iconColor
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle()
                    .fill(iconColor.gradient)

                Image(systemName: iconSystemName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.white)
                    .padding(geometry.size.width * 0.15)
            }
        }
    }
}

#Preview {
    AppIconView(iconSystemName: "m.square.fill", iconColor: .black)
        .frame(width: 300, height: 300)
}
