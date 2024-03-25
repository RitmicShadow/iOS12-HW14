//
//  CollectionViewCell.swift
//  iOS12-HW14
//
//  Created by Ден Майшев on 23.03.2024.
//

import UIKit

class AlbumsViewCell: UICollectionViewCell {

    static let identifier = "AlbumsViewCell"

    //    MARK: - UI

    private lazy var albumsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        return label
    }()

    private lazy var discriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()

    private let image: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        return stack
    }()

    //     MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }

    private func setupHierarchy() {
        contentView.addSubview(image)
        contentView.addSubview(stack)
        stack.addArrangedSubview(albumsLabel)
        stack.addArrangedSubview(discriptionLabel)
    }

    private func setupLayout() {
        stack.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(image.snp.bottom).offset(6)
        }
        image.snp.makeConstraints {
            $0.leading.trailing.top.equalToSuperview()
            $0.height.equalTo(image.snp.width)
        }
    }

    func configuration(model: CompositionalModel) {
        self.albumsLabel.text = model.mainTitle
        self.image.image = model.image
        self.discriptionLabel.text = model.description
    }

    override func prepareForReuse() {
        super.prepareForReuse()

    }
}
