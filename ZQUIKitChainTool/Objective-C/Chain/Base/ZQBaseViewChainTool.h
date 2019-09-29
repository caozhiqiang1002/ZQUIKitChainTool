//
//  ZQBaseViewChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/18.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

#if __has_include(<Masonry/Masonry.h>)
#define ZQ_HAS_MASONRY
#import <Masonry/Masonry.h>
#endif

// 派生类使用
#define ZQ_CHAIN_TOOL_INTERFACE(tool_class, attr_class, attr_name, ...) \
- (tool_class *(^)(attr_class))attr_name __VA_ARGS__ \

#define ZQ_CHAIN_TOOL_IMPLEMENT(class, tool_class, attr_class, attr_name, ...) \
- (tool_class *(^)(attr_class))attr_name __VA_ARGS__ { \
    return ^tool_class *(attr_class attr_name) { \
        class *currentView = self.view; \
        currentView.attr_name = attr_name; \
        return self; \
    }; \
} \

// 基类使用
#define ZQ_CHAIN_TOOL_BASE_INTERFACE(attr_class, attr_name, ...) \
- (T(^)(attr_class))attr_name __VA_ARGS__ \

@interface ZQBaseViewChainTool<__covariant T> : NSObject

@property (nonatomic, strong, readonly) __kindof UIView *view;

#pragma mark - Initialize

- (instancetype)initWithView:(UIView *)view;

#pragma mark - Chain Property

// 基本属性
ZQ_CHAIN_TOOL_BASE_INTERFACE(UIColor *, backgroundColor);
ZQ_CHAIN_TOOL_BASE_INTERFACE(UIColor *, tintColor);

ZQ_CHAIN_TOOL_BASE_INTERFACE(UIView *, maskView);

ZQ_CHAIN_TOOL_BASE_INTERFACE(CGFloat, alpha);
ZQ_CHAIN_TOOL_BASE_INTERFACE(NSInteger, tag);
ZQ_CHAIN_TOOL_BASE_INTERFACE(CGAffineTransform, transform);
ZQ_CHAIN_TOOL_BASE_INTERFACE(CATransform3D, transform3D, API_AVAILABLE(ios(12.0)));
ZQ_CHAIN_TOOL_BASE_INTERFACE(UIViewAutoresizing, autoresizingMask);
ZQ_CHAIN_TOOL_BASE_INTERFACE(UIViewContentMode, contentMode);
ZQ_CHAIN_TOOL_BASE_INTERFACE(UIViewTintAdjustmentMode, tintAdjustmentMode);
ZQ_CHAIN_TOOL_BASE_INTERFACE(UIEdgeInsets, layoutMargins);

ZQ_CHAIN_TOOL_BASE_INTERFACE(BOOL, userInteractionEnabled);
ZQ_CHAIN_TOOL_BASE_INTERFACE(BOOL, preservesSuperviewLayoutMargins);
ZQ_CHAIN_TOOL_BASE_INTERFACE(BOOL, insetsLayoutMarginsFromSafeArea, API_AVAILABLE(ios(11.0)));
ZQ_CHAIN_TOOL_BASE_INTERFACE(BOOL, clipsToBounds);
ZQ_CHAIN_TOOL_BASE_INTERFACE(BOOL, opaque);
ZQ_CHAIN_TOOL_BASE_INTERFACE(BOOL, clearsContextBeforeDrawing);
ZQ_CHAIN_TOOL_BASE_INTERFACE(BOOL, hidden);

// 尺寸、位置相关属性
ZQ_CHAIN_TOOL_BASE_INTERFACE(CGRect, frame);
ZQ_CHAIN_TOOL_BASE_INTERFACE(CGSize, size);
ZQ_CHAIN_TOOL_BASE_INTERFACE(CGPoint, center);
ZQ_CHAIN_TOOL_BASE_INTERFACE(CGPoint, origin);
ZQ_CHAIN_TOOL_BASE_INTERFACE(CGFloat, minX);
ZQ_CHAIN_TOOL_BASE_INTERFACE(CGFloat, minY);
ZQ_CHAIN_TOOL_BASE_INTERFACE(CGFloat, centerX);
ZQ_CHAIN_TOOL_BASE_INTERFACE(CGFloat, centerY);


#pragma mark - Chain Method

#ifdef ZQ_HAS_MASONRY
- (T(^)(void(^)(MASConstraintMaker *)))mas_makeConstraints;
- (T(^)(void(^)(MASConstraintMaker *)))mas_updateConstraints;
- (T(^)(void(^)(MASConstraintMaker *)))mas_remakeConstraints;
#endif

- (T(^)(void))removeFromSuperview;
- (T(^)(void))didMoveToSuperview;
- (T(^)(void))didMoveToWindow;
- (T(^)(void))setNeedsLayout;
- (T(^)(void))layoutIfNeeded;
- (T(^)(void))layoutSubviews;
- (T(^)(void))layoutMarginsDidChange;
- (T(^)(void))setNeedsDisplay;

- (T(^)(UIView *, NSInteger))insertSubview_index;

- (T(^)(NSInteger, NSInteger))exchangeSubview;

- (T(^)(UIView *, UIView *))insertSubview_belowSubview;
- (T(^)(UIView *, UIView *))insertSubview_aboveSubview;

- (T(^)(UIView *))addToSuperView;
- (T(^)(UIView *))bringSubviewToFront;
- (T(^)(UIView *))sendSubviewToBack;
- (T(^)(UIView *))didAddSubview;
- (T(^)(UIView *))willRemoveSubview;
- (T(^)(UIView *))willMoveToSuperview;

- (T(^)(UIWindow *))willMoveToWindow;

- (T(^)(CGRect))drawRect;
- (T(^)(CGRect))setNeedsDisplayInRect;

//图层相关
- (T(^)(CGFloat))cornerRadius;
- (T(^)(CGColorRef))borderColor;
- (T(^)(CGFloat))borderWidth;

@end

