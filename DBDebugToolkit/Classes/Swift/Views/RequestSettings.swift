import SwiftUI
import UIKit

#if SWIFT_PACKAGE
import DBDebugToolkitObjectiveCBase
#endif

struct RequestSettings: UIViewControllerRepresentable {
    let networkToolkit: DBNetworkToolkit

    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = DBNetworkSettingsTableViewController()
        viewController.networkToolkit = networkToolkit
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
