//
//  ZQBaseViewChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/18.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseViewChainTool.h"
#import "UIView+ZQFrame.h"

#define ZQ_CHAIN_TOOL_BASE_IMPLEMENT(attr_class, attr_name, ...) \
- (id(^)(attr_class))attr_name __VA_ARGS__ { \
    return ^id(attr_class attr_name) { \
        self.view.attr_name = attr_name; \
        return self; \
    }; \
} \

@interface ZQBaseViewChainTool ()
@property (nonatomic, strong) UIView *view;
@end

@implementation ZQBaseViewChainTool

#pragma mark - Initialize

- (instancetype)initWithView:(UIView *)view {
    if (self = [super init]) {
        self.view = view;
    }
    return self;
}

#pragma mark - Chain Property

// 基本属性
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(UIColor *, backgroundColor);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(UIColor *, tintColor);

ZQ_CHAIN_TOOL_BASE_IMPLEMENT(UIView *, maskView);

ZQ_CHAIN_TOOL_BASE_IMPLEMENT(CGFloat, alpha);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(NSInteger, tag);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(CGAffineTransform, transform);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(CATransform3D, transform3D, API_AVAILABLE(ios(12.0)));
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(UIViewAutoresizing, autoresizingMask);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(UIViewContentMode, contentMode);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(UIViewTintAdjustmentMode, tintAdjustmentMode);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(UIEdgeInsets, layoutMargins);

ZQ_CHAIN_TOOL_BASE_IMPLEMENT(BOOL, userInteractionEnabled);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(BOOL, preservesSuperviewLayoutMargins);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(BOOL, insetsLayoutMarginsFromSafeArea, API_AVAILABLE(ios(11.0)));


ZQ_CHAIN_TOOL_BASE_IMPLEMENT(BOOL, clipsToBounds);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(BOOL, opaque);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(BOOL, clearsContextBeforeDrawing);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(BOOL, hidden);

// 尺寸、位置相关属性
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(CGRect, frame);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(CGSize, size);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(CGPoint, center);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(CGPoint, origin);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(CGFloat, minX);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(CGFloat, minY);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(CGFloat, centerX);
ZQ_CHAIN_TOOL_BASE_IMPLEMENT(CGFloat, centerY);

#pragma mark - Chain Method

- (id (^)(void))removeFromSuperview {
    return ^id(void) {
        [self.view removeFromSuperview];
        return self;
    };
}

- (id (^)(void))didMoveToSuperview {
    return ^id(void) {
        [self.view didMoveToSuperview];
        return self;
    };
}

- (id (^)(void))didMoveToWindow {
    return ^id(void) {
        [self.view didMoveToWindow];
        return self;
    };
}

- (id (^)(void))setNeedsLayout {
    return ^id(void) {
        [self.view setNeedsLayout];
        return self;
    };
}

- (id (^)(void))layoutIfNeeded {
    return ^id(void) {
        [self.view layoutIfNeeded];
        return self;
    };
}

- (id (^)(void))layoutSubviews {
    return ^id(void) {
        [self.view layoutSubviews];
        return self;
    };
}

- (id (^)(void))layoutMarginsDidChange {
    return ^id(void) {
        [self.view layoutMarginsDidChange];
        return self;
    };
}

- (id (^)(void))setNeedsDisplay {
    return ^id(void) {
        [self.view setNeedsDisplay];
        return self;
    };
}

- (id (^)(UIView *, NSInteger))insertSubview_index {
    return ^id(UIView *view, NSInteger index) {
        [self.view insertSubview:view atIndex:index];
        return self;
    };
}

- (id (^)(NSInteger, NSInteger))exchangeSubview {
    return ^id(NSInteger index, NSInteger anotherIndex) {
        [self.view exchangeSubviewAtIndex:index withSubviewAtIndex:anotherIndex];
        return self;
    };
}

- (id (^)(UIView *, UIView *))insertSubview_aboveSubview {
    return ^id(UIView *view, UIView *anotherView) {
        [self.view insertSubview:view aboveSubview:anotherView];
        return self;
    };
}

- (id (^)(UIView *, UIView *))insertSubview_belowSubview {
    return ^id(UIView *view, UIView *anotherView) {
        [self.view insertSubview:view belowSubview:anotherView];
        return self;
    };
}

- (id(^)(UIView *))addToSuperView {
    return ^id(UIView *superView) {
        [superView addSubview:self.view];
        return self;
    };
}

- (id (^)(UIView *))bringSubviewToFront {
    return ^id(UIView *view) {
        [self.view bringSubviewToFront:view];
        return self;
    };
}

- (id (^)(UIView *))sendSubviewToBack {
    return ^id(UIView *view) {
        [self.view sendSubviewToBack:view];
        return self;
    };
}

- (id (^)(UIView *))didAddSubview {
    return ^id(UIView *view) {
        [self.view didAddSubview:view];
        return self;
    };
}

- (id (^)(UIView *))willRemoveSubview {
    return ^id(UIView *view) {
        [self.view willRemoveSubview:view];
        return self;
    };
}

- (id (^)(UIView *))willMoveToSuperview {
    return ^id(UIView *view) {
        [self.view willMoveToSuperview:view];
        return self;
    };
}

- (id (^)(UIWindow *))willMoveToWindow {
    return ^id(UIWindow *window) {
        [self.view willMoveToWindow:window];
        return self;
    };
}

- (id (^)(CGRect))drawRect {
    return ^id(CGRect rect) {
        [self.view drawRect:rect];
        return self;
    };
}

- (id (^)(CGRect))setNeedsDisplayInRect {
    return ^id(CGRect rect) {
        [self.view setNeedsDisplayInRect:rect];
        return self;
    };
}

@end
