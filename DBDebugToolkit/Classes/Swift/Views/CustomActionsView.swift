import SwiftUI
import UIKit

#if SWIFT_PACKAGE
import DBDebugToolkitObjectiveCBase
#endif

struct CustomActionsView: UIViewControllerRepresentable {
    let customActions: [DBCustomAction]

    func makeUIViewController(context: Context) -> DBCustomActionsTableViewController {
        let viewController = DBCustomActionsTableViewController()
        viewController.customActions = customActions
        return viewController
    }

    func updateUIViewController(_ uiViewController: DBCustomActionsTableViewController, context: Context) {}
}

