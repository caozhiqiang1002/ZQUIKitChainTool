//
//  ZQUIGestureChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseGestureChainTool.h"

@class ZQUIGestureChainTool;
@class ZQUITapGestureChainTool;
@class ZQUISwipeGestureChainTool;
@class ZQUIScreenEdgePanGestureChainTool;
@class ZQUIRotationGestureChainTool;
@class ZQUIPanGestureChainTool;
@class ZQUILongPressGestureChainTool;
@class ZQUIPinchGestureChainTool;



@interface ZQUIGestureChainTool : ZQBaseGestureChainTool<ZQUIGestureChainTool *>

@end



@interface ZQUITapGestureChainTool : ZQBaseGestureChainTool<ZQUITapGestureChainTool *>

ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUITapGestureChainTool, NSUInteger, numberOfTapsRequired);
ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUITapGestureChainTool, NSUInteger, numberOfTouchesRequired);

@end



@interface ZQUISwipeGestureChainTool : ZQBaseGestureChainTool<ZQUISwipeGestureChainTool *>

ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUISwipeGestureChainTool, NSUInteger, numberOfTouchesRequired);
ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUISwipeGestureChainTool, UISwipeGestureRecognizerDirection, direction);

@end



@interface ZQUIScreenEdgePanGestureChainTool : ZQBaseGestureChainTool<ZQUIScreenEdgePanGestureChainTool *>

ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUIScreenEdgePanGestureChainTool, UIRectEdge, edges);

@end



@interface ZQUIRotationGestureChainTool : ZQBaseGestureChainTool<ZQUIRotationGestureChainTool *>

ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUIRotationGestureChainTool, CGFloat, rotation);

@end



@interface ZQUIPanGestureChainTool : ZQBaseGestureChainTool<ZQUIPanGestureChainTool *>

ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUIPanGestureChainTool, NSUInteger, minimumNumberOfTouches);
ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUIPanGestureChainTool, NSUInteger, maximumNumberOfTouches);

- (ZQUIPanGestureChainTool *(^)(CGPoint, UIView *))setTranslation;

@end



@interface ZQUILongPressGestureChainTool : ZQBaseGestureChainTool<ZQUILongPressGestureChainTool *>

ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUILongPressGestureChainTool, NSUInteger, numberOfTapsRequired);
ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUILongPressGestureChainTool, NSUInteger, numberOfTouchesRequired);
ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUILongPressGestureChainTool, NSTimeInterval, minimumPressDuration);
ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUILongPressGestureChainTool, CGFloat, allowableMovement);

@end



@interface ZQUIPinchGestureChainTool : ZQBaseGestureChainTool<ZQUIPinchGestureChainTool *>

ZQ_CHAIN_TOOL_GESTURE_INTERFACE(ZQUIPinchGestureChainTool, CGFloat, scale);

@end
