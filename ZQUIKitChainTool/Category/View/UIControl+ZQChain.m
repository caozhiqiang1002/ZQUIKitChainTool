//
//  UIControl+ZQChain.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "UIControl+ZQChain.h"
#import <objc/runtime.h>

// 链式工具对象创建
#define ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(class, method) \
- (class *)method { \
    class *tool = objc_getAssociatedObject(self, @selector(method)); \
    if (!tool) { \
        tool = [[class alloc] initWithView:self]; \
        objc_setAssociatedObject(self, @selector(method), tool, OBJC_ASSOCIATION_RETAIN); \
    } \
    return tool; \
} \

@implementation UIControl (ZQChain)

ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIControlChainTool, controlTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIButtonChainTool, buttonTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIDatePickerChainTool, datePickerTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIPageControlChainTool, pageControlTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUISegmentedControlChainTool, segmentedControlTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUISliderChainTool, sliderTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUISwitchChainTool, switchTool);

@end
