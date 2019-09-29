//
//  ZQUIGestureChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUIGestureChainTool.h"

@implementation ZQUIGestureChainTool

@end



@implementation ZQUITapGestureChainTool

ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UITapGestureRecognizer, ZQUITapGestureChainTool, NSUInteger, numberOfTapsRequired);
ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UITapGestureRecognizer, ZQUITapGestureChainTool, NSUInteger, numberOfTouchesRequired);

@end



@implementation ZQUISwipeGestureChainTool

ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UISwipeGestureRecognizer, ZQUISwipeGestureChainTool, NSUInteger, numberOfTouchesRequired);
ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UISwipeGestureRecognizer, ZQUISwipeGestureChainTool, UISwipeGestureRecognizerDirection, direction);

@end



@implementation ZQUIScreenEdgePanGestureChainTool

ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UIScreenEdgePanGestureRecognizer, ZQUIScreenEdgePanGestureChainTool, UIRectEdge, edges);

@end



@implementation ZQUIRotationGestureChainTool

ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UIRotationGestureRecognizer, ZQUIRotationGestureChainTool, CGFloat, rotation);

@end



@implementation ZQUIPanGestureChainTool

ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UIPanGestureRecognizer, ZQUIPanGestureChainTool, NSUInteger, minimumNumberOfTouches);
ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UIPanGestureRecognizer, ZQUIPanGestureChainTool, NSUInteger, maximumNumberOfTouches);

- (ZQUIPanGestureChainTool *(^)(CGPoint, UIView *))setTranslation {
    return ^ZQUIPanGestureChainTool *(CGPoint translation, UIView *view) {
        UIPanGestureRecognizer *gesture = self.gesture;
        [gesture setTranslation:translation inView:view];
        return self;
    };
}

@end



@implementation ZQUILongPressGestureChainTool

ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UILongPressGestureRecognizer, ZQUILongPressGestureChainTool, NSUInteger, numberOfTapsRequired);
ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UILongPressGestureRecognizer, ZQUILongPressGestureChainTool, NSUInteger, numberOfTouchesRequired);
ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UILongPressGestureRecognizer, ZQUILongPressGestureChainTool, NSTimeInterval, minimumPressDuration);
ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UILongPressGestureRecognizer, ZQUILongPressGestureChainTool, CGFloat, allowableMovement);

@end



@implementation ZQUIPinchGestureChainTool

ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(UIPinchGestureRecognizer, ZQUIPinchGestureChainTool, CGFloat, scale);

@end
