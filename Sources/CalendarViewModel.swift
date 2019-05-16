//
//  CalendarViewModel.swift
//  TylerCalendarView-iOSTests
//
//  Created by tskim on 13/05/2019.
//  Copyright © 2019 Tyler. All rights reserved.
//

import Foundation
import UIKit

enum CalendarViewModelItemType {
    case dayOfWeek
    case date
}

protocol CalendarViewModelItem {
    var type: CalendarViewModelItemType { get }
    var sectionTitle: String { get }
    var rowCount: Int { get }
}

struct DayOfWeekViewModel: CalendarViewModelItem {
    var type: CalendarViewModelItemType = .dayOfWeek
    var sectionTitle: String
    var items: [String]

    var rowCount: Int {
        return items.count
    }

    init() {
        type = .dayOfWeek
        items = DayOfWeek.all
        sectionTitle = "DayOfWeek"
    }
}

struct DateViewModel: CalendarViewModelItem {

    private let titleDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy. MM"
        return formatter
    }()

    var type: CalendarViewModelItemType = .date
    var sectionTitle: String = "Date"
    var rowCount: Int {
        return items.count
    }
    var items: [String]
    var todayTitle: String

    public init(source: CalendarSource) {
        todayTitle = titleDateFormatter.string(from: source.startDate)
        items = source.days()
    }
}

class CalendarViewModel: NSObject {
    var items: [CalendarViewModelItem] = []

    init(items: [CalendarViewModelItem]) {
        self.items = items
    }
}

extension CalendarViewModel: UICollectionViewDataSource {
    public func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        return items[section].rowCount
    }

    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return items.count
    }

    public func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let item = items[indexPath.section]
        switch item.type {
        case .dayOfWeek:
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DayOfWeekCell.swiftIdentifier, for: indexPath) as? DayOfWeekCell,
                let item = (self.items[indexPath.section] as? DayOfWeekViewModel)?.items[indexPath.row] {
                cell.configCell(item)
                return cell
            }
        case .date:
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DateCell.swiftIdentifier, for: indexPath) as? DateCell,
                let item = (self.items[indexPath.section] as? DateViewModel)?.items[indexPath.row] {
                cell.configCell(item)
                return cell
            }
        }
        return UICollectionViewCell()
    }
}
