import SwiftUI

@main
struct SwiftAppIconApp: App {
    var body: some Scene {
        WindowGroup {
            AppIconSnapshotView(
                iconSystemName: "m.square.fill",
                iconColor: .black
            )
        }
    }
}
