//
//  ZQUIPickerViewChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/20.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseViewChainTool.h"

@class ZQUIPickerViewChainTool;

@interface ZQUIPickerViewChainTool : ZQBaseViewChainTool<ZQUIPickerViewChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUIPickerViewChainTool, id<UIPickerViewDelegate>, delegate);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIPickerViewChainTool, id<UIPickerViewDataSource>, dataSource);

#pragma mark - Chain Method

- (ZQUIPickerViewChainTool *(^)(void))reloadAllComponents;
- (ZQUIPickerViewChainTool *(^)(NSInteger))reloadComponent;
- (ZQUIPickerViewChainTool *(^)(NSInteger, NSInteger, BOOL))selectRow;

@end
