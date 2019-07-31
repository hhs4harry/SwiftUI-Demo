import SwiftUI
import Combine

class DragState: BindableObject {

    let willChange = PassthroughSubject<Void, Never>()

	enum State {
		case inactive
		case dragging(translation: CGSize)
	}

	var state: State = .inactive {
		didSet {
			willChange.send()
		}
	}

	var translation: CGSize {
		switch state {
		case .inactive: return .zero
		case .dragging(let translation): return translation
		}
	}

	var isActive: Bool {
		switch state {
		case .inactive: return false
		case .dragging: return true
		}
	}
}
