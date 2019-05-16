//
//  DayFormatter.swift
//  TylerCalendarView-iOS
//
//  Created by tskim on 14/05/2019.
//  Copyright © 2019 Tyler. All rights reserved.
//

import Foundation

enum FormatterType: String {
    case day = "dd"
}

class FormatterFactory {
    private static var instance: FormatterFactory = {
        return FormatterFactory()
    }()
    
    func get(_ type: FormatterType) -> DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = type.rawValue
        return formatter
    }
}
extension FormatterFactory {
    static var shared: FormatterFactory {
        return instance
    }
}
