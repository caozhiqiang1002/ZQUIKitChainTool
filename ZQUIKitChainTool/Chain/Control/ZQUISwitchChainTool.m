//
//  ZQUISwitchChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUISwitchChainTool.h"

@implementation ZQUISwitchChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(UISwitch, ZQUISwitchChainTool, UIColor *, onTintColor);
ZQ_CHAIN_TOOL_IMPLEMENT(UISwitch, ZQUISwitchChainTool, UIColor *, thumbTintColor);

ZQ_CHAIN_TOOL_IMPLEMENT(UISwitch, ZQUISwitchChainTool, UIImage *, onImage);
ZQ_CHAIN_TOOL_IMPLEMENT(UISwitch, ZQUISwitchChainTool, UIImage *, offImage);

ZQ_CHAIN_TOOL_IMPLEMENT(UISwitch, ZQUISwitchChainTool, BOOL, on);

#pragma mark - Chain Method;

- (ZQUISwitchChainTool *(^)(BOOL, BOOL))setOn {
    return ^ZQUISwitchChainTool *(BOOL on, BOOL animated) {
        UISwitch *uiSwitch = self.view;
        [uiSwitch setOn:on animated:animated];
        return self;
    };
}

@end
