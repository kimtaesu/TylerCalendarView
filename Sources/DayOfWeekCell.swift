//
//  DayOfWeekCell.swift
//  TylerCalendarView-iOSTests
//
//  Created by tskim on 13/05/2019.
//  Copyright © 2019 Tyler. All rights reserved.
//

import Foundation
import UIKit

class DayOfWeekCell: UICollectionViewCell, SwiftNameIdentifier {

    let dayOfWeekLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpContraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUpContraints() {
        dayOfWeekLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(dayOfWeekLabel)
        NSLayoutConstraint(
            item: dayOfWeekLabel,
            attribute: .leading,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .leading,
            multiplier: 1.0,
            constant: 0
        ).isActive = true
        
        NSLayoutConstraint(
            item: dayOfWeekLabel,
            attribute: .trailing,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .trailing,
            multiplier: 1.0,
            constant: 0
            ).isActive = true
        
        NSLayoutConstraint(
            item: dayOfWeekLabel,
            attribute: .top,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .top,
            multiplier: 1.0,
            constant: 0
            ).isActive = true
        
        NSLayoutConstraint(
            item: dayOfWeekLabel,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .bottom,
            multiplier: 1.0,
            constant: 0
            ).isActive = true
    }
}

extension DayOfWeekCell {
    func configCell(_ item: String) {
        dayOfWeekLabel.text = item
    }
}
