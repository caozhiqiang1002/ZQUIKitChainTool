//
//  UIGestureRecognizer+ZQChain.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZQUIKitChainDefine.h"

@interface UIGestureRecognizer (ZQChain)

- (ZQUIGestureChainTool *)gestureTool;
- (ZQUITapGestureChainTool *)tapGestureTool;
- (ZQUISwipeGestureChainTool *)swipeGestureTool;
- (ZQUIScreenEdgePanGestureChainTool *)screenGestureTool;
- (ZQUIRotationGestureChainTool *)rotationGestureTool;
- (ZQUIPanGestureChainTool *)panGestureTool;
- (ZQUILongPressGestureChainTool *)longPressGestureTool;
- (ZQUIPinchGestureChainTool *)pinchGestureTool;

@end

