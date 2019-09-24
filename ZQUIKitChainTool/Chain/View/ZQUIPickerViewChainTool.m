//
//  ZQUIPickerViewChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/20.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUIPickerViewChainTool.h"

@implementation ZQUIPickerViewChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(UIPickerView, ZQUIPickerViewChainTool, id<UIPickerViewDelegate>, delegate);
ZQ_CHAIN_TOOL_IMPLEMENT(UIPickerView, ZQUIPickerViewChainTool, id<UIPickerViewDataSource>, dataSource);

#pragma mark - Chain Method

- (ZQUIPickerViewChainTool *(^)(void))reloadAllComponents {
    return ^ZQUIPickerViewChainTool *(void) {
        UIPickerView *pickerView = self.view;
        [pickerView reloadAllComponents];
        return self;
    };
}

- (ZQUIPickerViewChainTool *(^)(NSInteger))reloadComponent {
    return ^ZQUIPickerViewChainTool *(NSInteger component) {
        UIPickerView *pickerView = self.view;
        [pickerView reloadComponent:component];
        return self;
    };
}

- (ZQUIPickerViewChainTool *(^)(NSInteger, NSInteger, BOOL))selectRow {
    return ^ZQUIPickerViewChainTool *(NSInteger row, NSInteger component, BOOL animated) {
        UIPickerView *pickerView = self.view;
        [pickerView selectRow:row inComponent:component animated:animated];
        return self;
    };
}

@end
