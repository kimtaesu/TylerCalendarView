//
//  CalendarSource.swift
//  TylerCalendarView-iOSTests
//
//  Created by tskim on 13/05/2019.
//  Copyright © 2019 Tyler. All rights reserved.
//

import Foundation

class CalendarSource {
    private let calendar: Calendar
    private let dateFormatter: DateFormatter
    let startDate: Date
    
    init(date: Date, formatter: DateFormatter) {
        startDate = date
        calendar = Calendar.current
        self.dateFormatter = formatter
    }
    
    func days() -> [String] {
        let today = calendar.startOfDay(for: self.startDate)
        let dayOfWeek = calendar.component(.weekday, from: today)
        
        var dates: [Date] = []
        if let weekdays = calendar.range(of: .weekday, in: .weekOfYear, for: today) {
            dates = (weekdays.lowerBound ..< weekdays.upperBound)
                .compactMap {
                    calendar.date(byAdding: .day, value: $0 - dayOfWeek, to: today)
            }
        }
        return dates.map { self.dateFormatter.string(from: $0) }
    }
}
