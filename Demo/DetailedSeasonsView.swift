import SwiftUI
import Combine

struct DetailedSeasonsView : View {

	let seasons: [SeriesDataProvider.Series.Season]

	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {

			HStack {

				ForEach(seasons, id: \.name) { season in

					VStack(alignment: .leading) {

						Image(uiImage: season.icon)
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(
								width: (season.icon.size.width / season.icon.size.height) * 150,
								height: 150,
								alignment: .leading
							)
							.border(Color(red: 89.0 / 255.0, green: 93.0 / 255.0, blue: 104.0 / 255.0), width: 1)

						Text(season.name)
							.font(Font.system(size: 12).weight(.light))
							.foregroundColor(Color.white)

						Text("\(season.episodes.count) episodes")
							.font(Font.system(size: 12).weight(.ultraLight))
							.foregroundColor(Color.white)
					}
				}
			}
		}
		.listRowInsets(EdgeInsets())
		.padding(.all)
		.background(Color(red: 44.0 / 255.0, green: 42.0 / 255.0, blue: 52.0 / 255.0))
	}
}
