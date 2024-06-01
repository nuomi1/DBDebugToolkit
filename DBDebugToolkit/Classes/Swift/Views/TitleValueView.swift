import SwiftUI
import UIKit

#if SWIFT_PACKAGE
import DBDebugToolkitObjectiveCBase
#endif

struct TitleValueView: UIViewControllerRepresentable {
    let viewModel: DBTitleValueListViewModel

    func makeUIViewController(context: Context) -> DBTitleValueListTableViewController {
        let viewController = DBTitleValueListTableViewController()
        viewController.viewModel = viewModel
        return viewController
    }

    func updateUIViewController(_ uiViewController: DBTitleValueListTableViewController, context: Context) {}
}

