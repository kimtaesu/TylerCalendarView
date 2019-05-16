//
//  TylerCalendarView.swift
//  TylerCalendarView
//
//  Created by Tyler on 2019. 5. 13..
//  Copyright © 2019 Tyler. All rights reserved.
//

// Include Foundation
@_exported import Foundation
import UIKit

public class TylerCalendarView: UIView {

    var calendarViewModel: CalendarViewModel
    let calendarSource: CalendarSource

    let daysCollectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.register(DayOfWeekCell.self, forCellWithReuseIdentifier: DayOfWeekCell.swiftIdentifier)
        collectionView.register(DateCell.self, forCellWithReuseIdentifier: DateCell.swiftIdentifier)
        collectionView.backgroundColor = .clear
        return collectionView
    }()

    // For Testing
    internal func setViewModel(_ viewModel: CalendarViewModel) {
        self.calendarViewModel = viewModel
    }

    override init(frame: CGRect) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        self.calendarSource = CalendarSource(date: Date(), formatter: dateFormatter)
        self.calendarViewModel = CalendarViewModel(items: [
            DayOfWeekViewModel(),
            DateViewModel(source: self.calendarSource)
            ])
        super.init(frame: frame)
        addSubview(daysCollectionView)
        daysCollectionView.dataSource = self.calendarViewModel
        daysCollectionView.delegate = self
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public override func layoutSubviews() {
        super.layoutSubviews()
        daysCollectionView.frame = frame
    }
}

extension TylerCalendarView: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
}
