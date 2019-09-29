//
//  ZQUIDatePickerChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/29.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUIDatePickerChain: ZQBaseControlChain<UIDatePicker, ZQUIDatePickerChain> {

}

// MARK: Chain Property
public extension ZQUIDatePickerChain {
    
    @discardableResult
    func datePickerMode(_ datePickerMode: UIDatePicker.Mode) -> ZQUIDatePickerChain {
        self.view.datePickerMode = datePickerMode; return self
    }
    
    @discardableResult
    func countDownDuration(_ countDownDuration: TimeInterval) -> ZQUIDatePickerChain {
        self.view.countDownDuration = countDownDuration; return self
    }
    
    @discardableResult
    func minuteInterval(_ minuteInterval: Int) -> ZQUIDatePickerChain {
        self.view.minuteInterval = minuteInterval; return self
    }
    
    @discardableResult
    func locale(_ locale: Locale?) -> ZQUIDatePickerChain {
        self.view.locale = locale; return self
    }
    
    @discardableResult
    func calendar(_ calendar: Calendar) -> ZQUIDatePickerChain {
        self.view.calendar = calendar; return self
    }
    
    @discardableResult
    func timeZone(_ timeZone: TimeZone?) -> ZQUIDatePickerChain {
        self.view.timeZone = timeZone; return self
    }
    
    @discardableResult
    func date(_ date: Date) -> ZQUIDatePickerChain {
        self.view.date = date; return self
    }
    
    @discardableResult
    func minimumDate(_ minimumDate: Date?) -> ZQUIDatePickerChain {
        self.view.minimumDate = minimumDate; return self
    }
    
    @discardableResult
    func maximumDate(_ maximumDate: Date?) -> ZQUIDatePickerChain {
        self.view.maximumDate = maximumDate; return self
    }
}

// MARK: Chain Method
public extension ZQUIDatePickerChain {
    
    @discardableResult
    func setDate(_ date: Date, animated: Bool) -> ZQUIDatePickerChain {
        self.view.setDate(date, animated: animated); return self
    }
}
