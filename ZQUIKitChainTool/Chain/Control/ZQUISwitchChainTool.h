//
//  ZQUISwitchChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseControllChainTool.h"

@class ZQUISwitchChainTool;

@interface ZQUISwitchChainTool : ZQBaseControllChainTool<ZQUISwitchChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUISwitchChainTool, UIColor *, onTintColor);
ZQ_CHAIN_TOOL_INTERFACE(ZQUISwitchChainTool, UIColor *, thumbTintColor);

ZQ_CHAIN_TOOL_INTERFACE(ZQUISwitchChainTool, UIImage *, onImage);
ZQ_CHAIN_TOOL_INTERFACE(ZQUISwitchChainTool, UIImage *, offImage);

ZQ_CHAIN_TOOL_INTERFACE(ZQUISwitchChainTool, BOOL, on);

#pragma mark - Chain Method;

- (ZQUISwitchChainTool *(^)(BOOL, BOOL))setOn;

@end
