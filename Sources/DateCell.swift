//
//  DateCell.swift
//  TylerCalendarView-iOSTests
//
//  Created by tskim on 13/05/2019.
//  Copyright © 2019 Tyler. All rights reserved.
//

import Foundation
import UIKit

class DateCell: UICollectionViewCell, SwiftNameIdentifier {

    let dateLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpContraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setUpContraints() {
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(dateLabel)
        NSLayoutConstraint(
            item: dateLabel,
            attribute: .leading,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .leading,
            multiplier: 1.0,
            constant: 0
        ).isActive = true

        NSLayoutConstraint(
            item: dateLabel,
            attribute: .trailing,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .trailing,
            multiplier: 1.0,
            constant: 0
        ).isActive = true

        NSLayoutConstraint(
            item: dateLabel,
            attribute: .top,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .top,
            multiplier: 1.0,
            constant: 0
        ).isActive = true

        NSLayoutConstraint(
            item: dateLabel,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .bottom,
            multiplier: 1.0,
            constant: 0
        ).isActive = true
    }
}

extension DateCell {
    func configCell(_ item: String) {
        dateLabel.text = item
    }
}
