import UIKit
import SwiftUI

final class RootViewController: UITabBarController {

	private let uikit: UINavigationController = .init(rootViewController: ListViewControllerUIKit())
	private let swiftUI: UIHostingController = .init(rootView: ListViewControllerSwiftUI())

	override func viewDidLoad() {
		super.viewDidLoad()

		uikit.navigationBar.prefersLargeTitles = true
		swiftUI.tabBarItem = .init(title: "SwiftUI", image: nil, tag: 0)

		viewControllers = [uikit, swiftUI]
	}
}
