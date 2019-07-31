import SwiftUI
import Combine

struct DetailedViewControllerSwiftUI : View {

	@GestureState var dragState: DragState = DragState()

	private let provider: SeriesDataProvider = .init()

	let item: SeriesDataProvider.Series

    var body: some View {
		let dragGester = DragGesture().updating($dragState) { value, state, transaction in
			state.state = .dragging(translation: value.translation)
		}

		return GeometryReader { geometry in

			VStack(alignment: .center) {

				DetailedHeaderView(dragState: self.dragState, item: self.item, dragGester: dragGester, geometry: geometry)

				List {

					DetailedSeasonsView(seasons: self.item.seasons)
				}
				.background(Color.black)
				.padding(.top, -8)
				.animation(.easeInOut(duration: 0.3))
			}
			.frame(width: geometry.frame(in: .global).width, height: geometry.frame(in: .global).height)
			.lineLimit(nil)
			.gesture(
				self.dragState.isActive ?
					((geometry.frame(in: .local).minY == 0 && self.dragState.translation.height > 0) ?
						dragGester.onEnded { _ in self.dragState.state = .inactive } : nil) : nil
			)
			.navigationBarTitle(Text(self.item.title), displayMode: .inline)
		}
		.background(Color.black)
    }
}

#if DEBUG
struct DetailedViewControllerSwiftUI_Previews : PreviewProvider {
    static var previews: some View {
		DetailedViewControllerSwiftUI(item: SeriesDataProvider().series[0])
    }
}
#endif
