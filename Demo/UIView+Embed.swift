//
//  UIView+Embed.swift
//  Demo
//
//  Created by Harry on 15/07/19.
//  Copyright © 2019 |x|. All rights reserved.
//

import UIKit

extension UIView {

	func embed(in view: UIView, layoutGuide: UILayoutGuide? = nil, insets: UIEdgeInsets = .zero) {
		translatesAutoresizingMaskIntoConstraints = false

		view.addSubview(self)

		let left = layoutGuide?.leftAnchor ?? view.leftAnchor
		let right = layoutGuide?.rightAnchor ?? view.rightAnchor
		let bottom = layoutGuide?.bottomAnchor ?? view.bottomAnchor
		let top = layoutGuide?.topAnchor ?? view.topAnchor

		NSLayoutConstraint.activate(
			[
				leftAnchor.constraint(equalTo: left, constant: insets.left),
				right.constraint(equalTo: rightAnchor, constant: insets.right),
				topAnchor.constraint(equalTo: top, constant: insets.top),
				bottom.constraint(equalTo: bottomAnchor, constant: insets.bottom),
			]
		)
	}
}
