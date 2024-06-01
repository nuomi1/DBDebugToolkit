import SwiftUI
import UIKit

#if SWIFT_PACKAGE
import DBDebugToolkitObjectiveCBase
#endif

struct FilesView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let storyboard = UIStoryboard(name: "DBFilesTableViewController", bundle: Bundle.debugToolkit())
        let viewController = storyboard.instantiateInitialViewController() as? DBFilesTableViewController
        return viewController ?? UIViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
