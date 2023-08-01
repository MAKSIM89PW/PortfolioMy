//
//  AboutMeCell.swift
//  PortfolioMy
//
//  Created by Максим Нурутдинов on 01.08.2023.
//

import UIKit

class AboutMeCell: UITableViewCell {

    static let ID = "AboutMeCell"

    private let descriptionLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        contentView.addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.text = "iOS - developer \nС 2021 года по 2022 год был студентом-практикантом  в \"Школа 21 СБЕР\" \nС 2022 года по 2023 год работал IOS developer в \"стартапе CookIT\" \nЕсть опыт обучения персонала и роведению собеседований по Swift"

        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont.systemFont(ofSize: 14)
    }

    private func setupConstraints() {
        let pinLeftDescriptionLabel = NSLayoutConstraint(item: descriptionLabel, attribute: .leading, relatedBy: .equal, toItem: contentView, attribute: .leading, multiplier: 1, constant: 16)
//        let pinTopDescriptionLabel = NSLayoutConstraint(item: descriptionLabel, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 8)
        let pinRightDescriptionLabel = NSLayoutConstraint(item: descriptionLabel, attribute: .trailing, relatedBy: .equal, toItem: contentView, attribute: .trailing, multiplier: 1, constant: -16)

        contentView.addConstraints([pinLeftDescriptionLabel, pinRightDescriptionLabel])
    }
}
