import UIKit

final class ListCellUIKit: UITableViewCell {

	private lazy var verticalStackView: UIStackView = {
		let stackView: UIStackView = .init()
		stackView.axis = .vertical
		stackView.distribution = .equalSpacing
		stackView.spacing = 8.0
		stackView.alignment = .top
		return stackView
	}()

	private lazy var horizontalStackView: UIStackView = {
		let stackView: UIStackView = .init()
		stackView.axis = .horizontal
		stackView.distribution = .equalSpacing
		stackView.spacing = 8.0
		stackView.alignment = .leading
		return stackView
	}()

	private lazy var titleLabel: UILabel = {
		let label: UILabel = .init()
		label.numberOfLines = 4
		label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
		return label
	}()

	private let subtitleLabel: UILabel = {
		let label: UILabel = .init()
		label.numberOfLines = 4
		label.font = UIFont.systemFont(ofSize: 14, weight: .ultraLight)
		return label
	}()

	private lazy var iconContainerView: UIView = {
		let view: UIView = .init()
		view.addSubview(self.iconImageView)

		self.iconImageView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate(
			[
				self.iconImageView.topAnchor.constraint(equalTo: view.topAnchor),
				self.iconImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
				self.iconImageView.rightAnchor.constraint(equalTo: view.rightAnchor),
				self.iconImageView.bottomAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor),
				self.iconImageView.heightAnchor.constraint(equalToConstant: 100),
				self.iconImageView.widthAnchor.constraint(equalTo: self.iconImageView.heightAnchor, multiplier: 0.8)
			]
		)

		return view
	}()

	private let iconImageView: UIImageView = {
		let imageView: UIImageView = .init()
		imageView.contentMode = .scaleToFill
		imageView.clipsToBounds = true
		return imageView
	}()

	override init(
		style: UITableViewCell.CellStyle = .default,
		reuseIdentifier: String? = String(describing: self)
	) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)

		horizontalStackView.embed(in: contentView, insets: .init(top: 8, left: 20, bottom: 8, right: 20))
		horizontalStackView.addArrangedSubview(iconContainerView)
		horizontalStackView.addArrangedSubview(verticalStackView)

		verticalStackView.addArrangedSubview(titleLabel)
		verticalStackView.addArrangedSubview(subtitleLabel)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	func configure(with item: SeriesDataProvider.Series) -> Self {
		titleLabel.text = item.title
		subtitleLabel.text = item.subtitle
		iconImageView.image = item.icon

		return self
	}
}

final class ListViewControllerUIKit: UIViewController {

	private lazy var tableView: UITableView = {
		let tableView: UITableView = .init()
		tableView.embed(in: view)
		tableView.register(ListCellUIKit.self, forCellReuseIdentifier: String(describing: ListCellUIKit.self))
		return tableView
	}()

	private let provider: SeriesDataProvider = .init()

	override func viewDidLoad() {
		super.viewDidLoad()

		title = "UIKit"

		tableView.delegate = self
		tableView.dataSource = self
	}
}

extension ListViewControllerUIKit: UITableViewDelegate {}

extension ListViewControllerUIKit: UITableViewDataSource {

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return provider.series.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return ListCellUIKit().configure(with: provider.series[indexPath.row])
	}
}
