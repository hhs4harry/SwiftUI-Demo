import SwiftUI

struct ListViewControllerSwiftUI : View {

	private let provider: SeriesDataProvider = .init()

    var body: some View {
		NavigationView {
			List(provider.series, id: \.title) { item in
				NavigationLink(destination: DetailedViewControllerSwiftUI(item: item)) {
					ListItemView(title: item.title, subtitle: item.subtitle, icon: item.icon)
				}
			}
			.navigationBarTitle(Text("SwiftUI"))
		}
		.tabItem { Text("SwiftUI") }
    }
}

#if DEBUG
struct ListViewControllerSwiftUI_Previews : PreviewProvider {

    static var previews: some View {
		ListViewControllerSwiftUI()
    }
}
#endif
