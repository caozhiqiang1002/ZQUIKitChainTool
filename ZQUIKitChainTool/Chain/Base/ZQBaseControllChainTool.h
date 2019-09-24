//
//  ZQBaseControllChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseViewChainTool.h"

#define ZQ_CHAIN_TOOL_CONTROL_INTERFACE(attr_class, attr_name, ...) \
- (T(^)(attr_class))attr_name __VA_ARGS__ \

@interface ZQBaseControllChainTool<__covariant T> : ZQBaseViewChainTool<T>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_CONTROL_INTERFACE(BOOL, enabled);
ZQ_CHAIN_TOOL_CONTROL_INTERFACE(BOOL, selected);
ZQ_CHAIN_TOOL_CONTROL_INTERFACE(BOOL, highlighted);

ZQ_CHAIN_TOOL_CONTROL_INTERFACE(UIControlContentVerticalAlignment, contentVerticalAlignment);
ZQ_CHAIN_TOOL_CONTROL_INTERFACE(UIControlContentHorizontalAlignment, contentHorizontalAlignment);

#pragma mark - Chain Method

- (T(^)(UITouch *, UIEvent *))beginTrackingWithTouch;
- (T(^)(UITouch *, UIEvent *))continueTrackingWithTouch;
- (T(^)(UITouch *, UIEvent *))endTrackingWithTouch;
- (T(^)(UIEvent *))cancelTrackingWithEvent;

- (T(^)(id, SEL, UIControlEvents))addTarget;
- (T(^)(id, SEL, UIControlEvents))removeTarget;

- (T(^)(SEL, id, UIEvent *))sendAction;
- (T(^)(UIControlEvents))sendActionsForControlEvents;

@end
