//
//  UIBarItem+ZQChain.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "UIBarItem+ZQChain.h"
#import <objc/runtime.h>

#define ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(class, method) \
+ (class *)method { \
    return [[class alloc] init]; \
} \

// 链式工具对象创建
#define ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(class, method) \
- (class *)method { \
    class *tool = objc_getAssociatedObject(self, @selector(method)); \
    if (!tool) { \
        tool = [[class alloc] initWithItem:self]; \
        objc_setAssociatedObject(self, @selector(method), tool, OBJC_ASSOCIATION_RETAIN); \
    } \
    return tool; \
} \

@implementation UIBarItem (ZQChain)

ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UIBarItem, createBarItem);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UIBarButtonItem, createBarButtonItem);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UITabBarItem, createTabBarItem);


ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIBarItemChainTool, barItemTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIBarButtonItemChainTool, barButtonItemTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUITabBarItemChainTool, tabBarItemTool);

@end
