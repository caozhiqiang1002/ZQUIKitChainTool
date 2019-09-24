//
//  UIGestureRecognizer+ZQChain.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "UIGestureRecognizer+ZQChain.h"
#import <objc/runtime.h>

#define ZQ_UIKIT_CATEGORY_GESTURE_TOOL_IMPLEMENT(class, method) \
- (class *)method { \
    class *tool = objc_getAssociatedObject(self, @selector(method)); \
    if (!tool) { \
        tool = [[class alloc] initWithGesture:self]; \
        objc_setAssociatedObject(self, @selector(method), tool, OBJC_ASSOCIATION_RETAIN); \
    } \
    return tool; \
} \

@implementation UIGestureRecognizer (ZQChain)

ZQ_UIKIT_CATEGORY_GESTURE_TOOL_IMPLEMENT(ZQUIGestureChainTool, gestureTool);
ZQ_UIKIT_CATEGORY_GESTURE_TOOL_IMPLEMENT(ZQUITapGestureChainTool, tapGestureTool);
ZQ_UIKIT_CATEGORY_GESTURE_TOOL_IMPLEMENT(ZQUISwipeGestureChainTool, swipeGestureTool);
ZQ_UIKIT_CATEGORY_GESTURE_TOOL_IMPLEMENT(ZQUIScreenEdgePanGestureChainTool, screenGestureTool);
ZQ_UIKIT_CATEGORY_GESTURE_TOOL_IMPLEMENT(ZQUIRotationGestureChainTool, rotationGestureTool);
ZQ_UIKIT_CATEGORY_GESTURE_TOOL_IMPLEMENT(ZQUIPanGestureChainTool, panGestureTool);
ZQ_UIKIT_CATEGORY_GESTURE_TOOL_IMPLEMENT(ZQUILongPressGestureChainTool, longPressGestureTool);
ZQ_UIKIT_CATEGORY_GESTURE_TOOL_IMPLEMENT(ZQUIPinchGestureChainTool, pinchGestureTool);

@end
