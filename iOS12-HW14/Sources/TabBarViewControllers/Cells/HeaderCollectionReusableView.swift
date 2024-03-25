//
//  HeaderCollectionReusableView.swift
//  iOS12-HW14
//
//  Created by Ден Майшев on 25.03.2024.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {

    static let identifire = "HeaderCollectionReusableView"

    // MARK: - UI

    private let separator: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray4
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Все", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("Error in Cell")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        addSubview(separator)
        addSubview(titleLabel)
        addSubview(button)
    }

    private func setupLayout() {
        separator.snp.makeConstraints { make in
            make.height.equalTo(0.5)
            make.leading.equalTo(self).inset(10)
            make.trailing.top.equalTo(self)
        }

        titleLabel.snp.makeConstraints { make in
            make.leading.equalTo(self).inset(10)
            make.centerY.equalTo(self)
        }

        button.snp.makeConstraints { make in
            make.trailing.equalTo(self).inset(20)
            make.centerY.equalTo(self)
        }
    }
    func configuration(model: CompositionalSection) {
        self.titleLabel.text = model.title
        self.button.isHidden = model.buttonIsHidden ?? true
    }
}
