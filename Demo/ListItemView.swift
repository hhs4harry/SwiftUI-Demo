import SwiftUI
import UIKit

struct ImageView: View {

	let image: UIImage

	var body: some View {
		Image(uiImage: image)
			.resizable(resizingMode: .stretch)
			.frame(width: 80, height: 100, alignment: .leading)
			.clipped()
	}
}

struct ListItemView: View {

	let title: String
	let subtitle: String
	let icon: UIImage

	var body: some View {
		HStack(alignment: .top, spacing: 8) {

			ImageView(image: icon)

			VStack(alignment: .leading, spacing: 8) {
				Text(title).font(Font.system(size: 16).weight(.regular))
				Text(subtitle).font(Font.system(size: 14).weight(.ultraLight))
			}
			.lineLimit(nil)
		}
	}
}

#if DEBUG
struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			ListItemView(
				title: "Breaking Bad",
				subtitle: "A description about breaking bad.",
				icon: UIImage(named: "bb")!
			)
			.previewLayout(.fixed(width: 300, height: 100))

			ListItemView(
				title: "Game Of Thrones",
				subtitle: "A description about game of thrones.",
				icon: UIImage(named: "got")!
			)
			.previewLayout(.fixed(width: 200, height: 100))

			ListItemView(
				title: "Breaking Bad",
				subtitle: "A description about breaking bad.",
				icon: UIImage(named: "bb")!
			)
			.environment(\.sizeCategory, .extraExtraExtraLarge)
			.previewLayout(.fixed(width: 200, height: 100))

			NavigationView {
				ListItemView(
					title: "Game Of Thrones",
					subtitle: "A description about game of thrones.",
					icon: UIImage(named: "got")!
				)
			}
			.previewDevice(PreviewDevice(rawValue: "Mac"))
			.previewDisplayName("Mac")

			NavigationView {
				ListItemView(
					title: "Breaking Bad",
					subtitle: "A description about breaking bad.",
					icon: UIImage(named: "bb")!
				)
			}
			.previewDevice(PreviewDevice(rawValue: "Apple Watch Series 4 - 44mm"))
			.previewDisplayName("Apple Watch Series 4 - 44mm")
		}
	}
}
#endif
