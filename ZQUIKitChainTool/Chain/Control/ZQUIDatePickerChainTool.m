//
//  ZQUIDatePickerChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUIDatePickerChainTool.h"

@implementation ZQUIDatePickerChainTool

#pragma mark - Chain Preperty

ZQ_CHAIN_TOOL_IMPLEMENT(UIDatePicker, ZQUIDatePickerChainTool, UIDatePickerMode, datePickerMode);
ZQ_CHAIN_TOOL_IMPLEMENT(UIDatePicker, ZQUIDatePickerChainTool, NSTimeInterval, countDownDuration);
ZQ_CHAIN_TOOL_IMPLEMENT(UIDatePicker, ZQUIDatePickerChainTool, NSInteger, minuteInterval);

ZQ_CHAIN_TOOL_IMPLEMENT(UIDatePicker, ZQUIDatePickerChainTool, NSLocale *, locale);
ZQ_CHAIN_TOOL_IMPLEMENT(UIDatePicker, ZQUIDatePickerChainTool, NSCalendar *, calendar);
ZQ_CHAIN_TOOL_IMPLEMENT(UIDatePicker, ZQUIDatePickerChainTool, NSTimeZone *, timeZone);

ZQ_CHAIN_TOOL_IMPLEMENT(UIDatePicker, ZQUIDatePickerChainTool, NSDate *, date);
ZQ_CHAIN_TOOL_IMPLEMENT(UIDatePicker, ZQUIDatePickerChainTool, NSDate *, minimumDate);
ZQ_CHAIN_TOOL_IMPLEMENT(UIDatePicker, ZQUIDatePickerChainTool, NSDate *, maximumDate);

#pragma mark - Chain Method

- (ZQUIDatePickerChainTool *(^)(NSDate *, BOOL))setDate {
    return ^ZQUIDatePickerChainTool *(NSDate *date, BOOL animated) {
        UIDatePicker *datePicker = self.view;
        [datePicker setDate:date animated:animated];
        return self;
    };
}

@end
