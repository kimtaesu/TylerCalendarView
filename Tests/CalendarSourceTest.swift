//
//  CalendarCursorTest.swift
//  TylerCalendarView
//
//  Created by tskim on 11/05/2019.
//

import XCTest
@testable import TylerCalendarView

class CalendarSourceTest: XCTestCase {

    var subject: CalendarSource!
    var today: Date!

    override func setUp() {
        let sDate = Date.day(dateString: "2019-01-01")
        let fomatter = DateFormatter()
        fomatter.dateFormat = "dd"
        subject = CalendarSource(date: sDate, formatter: fomatter)
    }
    func testWeekdays() {
        let expectWeekly = [
            "30",
            "31",
            "01",
            "02",
            "03",
            "04",
            "05"
        ]
        
        XCTAssertEqual(subject.days(), expectWeekly)
    }
}
