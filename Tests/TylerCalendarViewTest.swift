//
//  TylerCalendarViewTest.swift
//  TylerCalendarView-iOSTests
//
//  Created by tskim on 13/05/2019.
//  Copyright © 2019 Tyler. All rights reserved.
//

import XCTest
import UIKit
@testable import TylerCalendarView

class TylerCalendarViewTest: XCTestCase {

    var viewController: UIViewController!
    var calendarView: TylerCalendarView!
    var source: CalendarSource!
    var viewModel: CalendarViewModel!

    override func setUp() {
        let sDate = Date.day(dateString: "2019-01-01")
        viewController = UIViewController()
        source = CalendarSource(date: sDate, formatter: FormatterFactory.shared.get(.day))

        viewModel = CalendarViewModel(items: [
            DayOfWeekViewModel(),
            DateViewModel(source: source)
            ])
        calendarView = TylerCalendarView()
        calendarView.setViewModel(viewModel)
        viewController.view.addSubview(calendarView)
        viewController.view = calendarView
    }

    func testPresentView() {
        XCTAssertEqual(calendarView.isHidden, false)
    }
    func testDayOfWeekCell() {
        viewController.viewDidLayoutSubviews()
        calendarView.daysCollectionView.reloadData()
        let cell = calendarView.daysCollectionView.dequeueReusableCell(withReuseIdentifier: DayOfWeekCell.swiftIdentifier, for: IndexPath(row: 0, section: 0)) as? DayOfWeekCell
        XCTAssertEqual(cell?.dayOfWeekLabel.text, "S")
    }
}


