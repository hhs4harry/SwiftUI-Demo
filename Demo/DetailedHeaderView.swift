import SwiftUI
import Combine

struct DetailedHeaderView : View {

	@ObjectBinding<DragState> var dragState: DragState

	let item: SeriesDataProvider.Series
	let dragGester: AnyGesture<DragGesture.Value>
	let geometry: GeometryProxy

	var body: some View {

		VStack(alignment: .center) {

			HStack {
				Image(uiImage: self.item.banner)
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: geometry.frame(in: .local).width)
					.overlay(Color.black.opacity(0.7))
			}
			.overlay(
				HStack(alignment: .bottom) {

					Image(uiImage: self.item.icon)
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(
							width: (self.item.icon.size.width / self.item.icon.size.height) * 170,
							height: 170,
							alignment: .center
						)
						.border(Color(red: 89.0 / 255.0, green: 93.0 / 255.0, blue: 104.0 / 255.0), width: 1)
						.padding(.leading)

					VStack(alignment: .leading) {

						Text(self.item.title)
							.font(Font.system(size: 16).weight(.regular))
							.foregroundColor(.white)

						HStack {

							Rectangle()
								.fill()
								.foregroundColor(Color(red: 191.0 / 255.0, green: 129.0 / 255.0, blue: 0.0 / 255.0))
								.frame(width: 20, height: 20)
								.fixedSize()
								.cornerRadius(2)
								.overlay(
									Text("\(self.item.seasons.count)")
										.font(Font.system(size: 14).weight(.light))
										.foregroundColor(.black)
								)

							Text("Seasons")
								.font(Font.system(size: 14).weight(.light))
								.foregroundColor(Color.white)
						}
					}
					.padding(.bottom)
				}
				.gesture(
					dragGester
						.onEnded { _ in
							self.dragState.state = .inactive
						}
				)
				.animation(.easeInOut(duration: 0.3)),
					alignment: .leading
				)
				.gesture(
					dragGester
						.onEnded { _ in
							self.dragState.state = .inactive
						}
				)
				.animation(.easeInOut(duration: 0.3))
		}
		.frame(
			width: geometry.frame(in: .local).width,
			height: .maximum(
				((geometry.frame(in: .local).width + (self.dragState.isActive ? self.dragState.translation.height : 0)) * 0.56),
				(geometry.frame(in: .local).width * 0.56) * 0.6
			)
		)
		.animation(.easeInOut(duration: 0.3))
	}
}
