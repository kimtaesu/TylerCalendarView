//
//  DayOfWeek.swift
//  TylerCalendarView-iOSTests
//
//  Created by tskim on 13/05/2019.
//  Copyright © 2019 Tyler. All rights reserved.
//

import Foundation

enum DayOfWeek: Int, CaseIterable {
    case sunday = 1
    case monday = 2
    case thursday = 3
    case wednesday = 4
    case tuesday = 5
    case friday = 6
    case saturday = 7
    
    var description: String {
        switch self {
        case .sunday:
            return "S"
        case .monday:
            return "M"
        case .thursday:
            return "T"
        case .wednesday:
            return "W"
        case .tuesday:
            return "T"
        case .friday:
            return "F"
        case .saturday:
            return "S"
        }
    }
    static var all: [String] {
        return DayOfWeek.allCases.map { $0.description }
    }
}
