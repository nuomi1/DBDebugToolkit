import SwiftUI
import UIKit

#if SWIFT_PACKAGE
import DBDebugToolkitObjectiveCBase
#endif

struct PerformanceView: UIViewControllerRepresentable {
    let performanceToolkit: DBPerformanceToolkit

    func makeUIViewController(context: Context) -> DBPerformanceTableViewController {
        let viewController = DBPerformanceTableViewController()
        viewController.performanceToolkit = performanceToolkit
        return viewController
    }

    func updateUIViewController(_ uiViewController: DBPerformanceTableViewController, context: Context) {}
}
