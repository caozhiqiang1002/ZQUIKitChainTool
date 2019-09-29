//
//  ZQBaseGestureChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseGestureChainTool.h"

#define ZQ_CHAIN_TOOL_BASE_GESTURE_IMPLEMENT(attr_class, attr_name, ...) \
- (id(^)(attr_class))attr_name __VA_ARGS__ { \
    return ^id(attr_class attr_name) { \
        self.gesture.attr_name = attr_name; \
        return self; \
    }; \
} \

@interface ZQBaseGestureChainTool()
@property (nonatomic, strong) UIGestureRecognizer *gesture;
@end

@implementation ZQBaseGestureChainTool

- (ZQBaseGestureChainTool *)initWithGesture:(UIGestureRecognizer *)gesture {
    if (self = [super init]) {
        self.gesture = gesture;
    }
    return self;
}

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_BASE_GESTURE_IMPLEMENT(id<UIGestureRecognizerDelegate>, delegate);

ZQ_CHAIN_TOOL_BASE_GESTURE_IMPLEMENT(BOOL, enabled);
ZQ_CHAIN_TOOL_BASE_GESTURE_IMPLEMENT(BOOL, cancelsTouchesInView);
ZQ_CHAIN_TOOL_BASE_GESTURE_IMPLEMENT(BOOL, delaysTouchesBegan);
ZQ_CHAIN_TOOL_BASE_GESTURE_IMPLEMENT(BOOL, delaysTouchesEnded);
ZQ_CHAIN_TOOL_BASE_GESTURE_IMPLEMENT(BOOL, requiresExclusiveTouchType, API_AVAILABLE(ios(9.2)));

ZQ_CHAIN_TOOL_BASE_GESTURE_IMPLEMENT(NSArray<NSNumber *> *, allowedTouchTypes);
ZQ_CHAIN_TOOL_BASE_GESTURE_IMPLEMENT(NSArray<NSNumber *> *, allowedPressTypes);

ZQ_CHAIN_TOOL_BASE_GESTURE_IMPLEMENT(NSString *, name, API_AVAILABLE(ios(11.0)));

#pragma mark - Chain Method

- (id(^)(id, SEL))addTarget {
    return ^id(id target, SEL action) {
        [self.gesture addTarget:target action:action];
        return self;
    };
}

- (id(^)(id, SEL))removeTarget {
    return ^id(id target, SEL action) {
        [self.gesture removeTarget:target action:action];
        return self;
    };
}

- (id(^)(UIGestureRecognizer *))requireGestureRecognizerToFail {
    return ^id(UIGestureRecognizer *gesture) {
        [self.gesture requireGestureRecognizerToFail:gesture];
        return self;
    };
}

@end
