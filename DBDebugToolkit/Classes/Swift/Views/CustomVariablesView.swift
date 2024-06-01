import SwiftUI
import UIKit

#if SWIFT_PACKAGE
import DBDebugToolkitObjectiveCBase
#endif

struct CustomVariablesView: UIViewControllerRepresentable {
    let customVariables: [String: DBCustomVariable]

    func makeUIViewController(context: Context) -> DBCustomVariablesTableViewController {
        let viewController = DBCustomVariablesTableViewController()
        viewController.setCustomVariables(customVariables.values.compactMap { $0 })
        return viewController
    }

    func updateUIViewController(_ uiViewController: DBCustomVariablesTableViewController, context: Context) {}
}
