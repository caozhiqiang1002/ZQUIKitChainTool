//
//  ZQBaseGestureChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

// 派生类使用
#define ZQ_CHAIN_TOOL_GESTURE_INTERFACE(tool_class, attr_class, attr_name, ...) \
- (tool_class *(^)(attr_class))attr_name __VA_ARGS__ \

#define ZQ_CHAIN_TOOL_GESTURE_IMPLEMENT(class, tool_class, attr_class, attr_name, ...) \
- (tool_class *(^)(attr_class))attr_name __VA_ARGS__ { \
    return ^tool_class *(attr_class attr_name) { \
        class *currentGesture = self.gesture; \
        currentGesture.attr_name = attr_name; \
        return self; \
    }; \
} \

// 基类使用
#define ZQ_CHAIN_TOOL_BASE_GESTURE_INTERFACE(attr_class, attr_name, ...) \
- (T(^)(attr_class))attr_name __VA_ARGS__ \

@interface ZQBaseGestureChainTool<__covariant T> : NSObject

@property (nonatomic, strong, readonly) __kindof UIGestureRecognizer *gesture;

- (ZQBaseGestureChainTool *)initWithGesture:(UIGestureRecognizer *)gesture;

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_BASE_GESTURE_INTERFACE(id<UIGestureRecognizerDelegate>, delegate);

ZQ_CHAIN_TOOL_BASE_GESTURE_INTERFACE(BOOL, enabled);
ZQ_CHAIN_TOOL_BASE_GESTURE_INTERFACE(BOOL, cancelsTouchesInView);
ZQ_CHAIN_TOOL_BASE_GESTURE_INTERFACE(BOOL, delaysTouchesBegan);
ZQ_CHAIN_TOOL_BASE_GESTURE_INTERFACE(BOOL, delaysTouchesEnded);
ZQ_CHAIN_TOOL_BASE_GESTURE_INTERFACE(BOOL, requiresExclusiveTouchType, API_AVAILABLE(ios(9.2)));

ZQ_CHAIN_TOOL_BASE_GESTURE_INTERFACE(NSArray<NSNumber *> *, allowedTouchTypes);
ZQ_CHAIN_TOOL_BASE_GESTURE_INTERFACE(NSArray<NSNumber *> *, allowedPressTypes);

ZQ_CHAIN_TOOL_BASE_GESTURE_INTERFACE(NSString *, name, API_AVAILABLE(ios(11.0)));

#pragma mark - Chain Method

- (T(^)(id, SEL))addTarget;
- (T(^)(id, SEL))removeTarget;
- (T(^)(UIGestureRecognizer *))requireGestureRecognizerToFail;


@end

