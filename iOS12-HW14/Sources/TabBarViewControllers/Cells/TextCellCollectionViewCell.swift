//
//  TextCellCollectionViewCell.swift
//  iOS12-HW14
//
//  Created by Ден Майшев on 25.03.2024.
//

import UIKit

class TextCellCollectionViewCell: UICollectionViewCell {
    static let identifier = "TextCell"

    // MARK: - UI

    private let lock: UIImageView = {
        let image = UIImage(systemName: "lock.fill")?.withConfiguration(UIImage.SymbolConfiguration(scale: .small))
        let imageView = UIImageView(image: image)
        imageView.isHidden = true
        imageView.tintColor = .systemGray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let separator: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray4
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let chevron: UIImageView = {
        let image = UIImage(systemName: "chevron.right")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 16, weight: .semibold, scale: .small))
        let imageView = UIImageView(image: image)
        imageView.tintColor = .systemGray
        imageView.alpha = 0.6
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 21, weight: .regular)
        label.textAlignment = .left
        label.textColor = .systemBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textAlignment = .right
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(chevron)
        addSubview(separator)
        addSubview(lock)
    }

    private func setupLayout() {
        imageView.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.leading.equalTo(self).inset(11)
            make.width.height.equalTo(26)
        }

        titleLabel.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.leading.equalTo(imageView.snp.trailing).offset(15)
        }

        chevron.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.trailing.equalTo(self).inset(15)
        }

        descriptionLabel.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.trailing.equalTo(chevron.snp.leading).offset(-8)
        }

        lock.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.trailing.equalTo(chevron.snp.leading).offset(-8)
        }

        separator.snp.makeConstraints { make in
            make.height.equalTo(0.5)
            make.trailing.bottom.equalTo(self)
            make.leading.equalTo(self).inset(41)
        }
    }

    func hideSeparator() {
        separator.isHidden = true
    }

    func showLock() {
        lock.isHidden = false
        descriptionLabel.isHidden = true
    }

    func configuration(model: CompositionalModel) {
        self.titleLabel.text = model.mainTitle
        self.descriptionLabel.text = model.description
        self.imageView.image = model.image
    }

    // MARK: - Reuse

    override func prepareForReuse() {
        super.prepareForReuse()
        separator.isHidden = false
        lock.isHidden = true
        descriptionLabel.isHidden = false
    }
}
