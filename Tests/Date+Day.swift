//
//  Date+Day.swift
//  TylerCalendarView
//
//  Created by tskim on 11/05/2019.
//

import Foundation

extension Date {
    static func day(dateString: String, locale: String = "ko_KR") -> Date {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: locale)
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.date(from: dateString)!
    }
}
