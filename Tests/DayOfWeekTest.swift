//
//  DayOfWeekTest.swift
//  TylerCalendarView-iOS
//
//  Created by tskim on 14/05/2019.
//  Copyright © 2019 Tyler. All rights reserved.
//

@testable import TylerCalendarView
import XCTest

class DayOfWeekTest: XCTestCase {

    func testListDayOfWeekNames() {
        XCTAssertEqual(DayOfWeek.all,  ["S", "M", "T", "W", "T", "F", "S"])
    }
}
