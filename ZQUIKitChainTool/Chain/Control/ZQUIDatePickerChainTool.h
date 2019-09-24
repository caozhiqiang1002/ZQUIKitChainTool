//
//  ZQUIDatePickerChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseControllChainTool.h"

@class ZQUIDatePickerChainTool;

@interface ZQUIDatePickerChainTool : ZQBaseControllChainTool<ZQUIDatePickerChainTool *>

#pragma mark - Chain Preperty

ZQ_CHAIN_TOOL_INTERFACE(ZQUIDatePickerChainTool, UIDatePickerMode, datePickerMode);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIDatePickerChainTool, NSTimeInterval, countDownDuration);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIDatePickerChainTool, NSInteger, minuteInterval);

ZQ_CHAIN_TOOL_INTERFACE(ZQUIDatePickerChainTool, NSLocale *, locale);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIDatePickerChainTool, NSCalendar *, calendar);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIDatePickerChainTool, NSTimeZone *, timeZone);

ZQ_CHAIN_TOOL_INTERFACE(ZQUIDatePickerChainTool, NSDate *, date);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIDatePickerChainTool, NSDate *, minimumDate);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIDatePickerChainTool, NSDate *, maximumDate);

#pragma mark - Chain Method

- (ZQUIDatePickerChainTool *(^)(NSDate *, BOOL))setDate;


@end
