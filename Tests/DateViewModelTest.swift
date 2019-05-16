//
//  DateViewModel.swift
//  TylerCalendarView-iOS
//
//  Created by tskim on 14/05/2019.
//  Copyright © 2019 Tyler. All rights reserved.
//

@testable import TylerCalendarView
import XCTest

class DateViewModelTest: XCTestCase {
    
    var viewModel: DateViewModel!
    var source: CalendarSource!
    
    override func setUp() {
        let sDate = Date.day(dateString: "2019-01-01")
        source = CalendarSource(date: sDate, formatter: FormatterFactory.shared.get(.day))
        viewModel = DateViewModel(source: source)
    }
    func testTodayTitle() {
        XCTAssertEqual(viewModel.todayTitle, "2019. 01")
    }
}
