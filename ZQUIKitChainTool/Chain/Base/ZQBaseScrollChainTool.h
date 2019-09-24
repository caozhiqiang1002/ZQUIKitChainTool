//
//  ZQBaseScrollChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/19.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseViewChainTool.h"

#define ZQ_CHAIN_TOOL_SCROLL_INTERFACE(attr_class, attr_name, ...) \
- (T(^)(attr_class))attr_name __VA_ARGS__ \

@interface ZQBaseScrollChainTool<__covariant T> : ZQBaseViewChainTool<T>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_SCROLL_INTERFACE(id<UIScrollViewDelegate>, delegate);

ZQ_CHAIN_TOOL_SCROLL_INTERFACE(UIRefreshControl *, refreshControl, API_AVAILABLE(ios(10.0)));

ZQ_CHAIN_TOOL_SCROLL_INTERFACE(CGPoint, contentOffset);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(CGSize, contentSize);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(CGFloat, minimumZoomScale);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(CGFloat, maximumZoomScale);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(CGFloat, zoomScale);

ZQ_CHAIN_TOOL_SCROLL_INTERFACE(UIScrollViewContentInsetAdjustmentBehavior, contentInsetAdjustmentBehavior, API_AVAILABLE(ios(11.0)));
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(UIScrollViewIndicatorStyle, indicatorStyle);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(UIScrollViewKeyboardDismissMode, keyboardDismissMode);

ZQ_CHAIN_TOOL_SCROLL_INTERFACE(UIEdgeInsets, contentInset);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(UIEdgeInsets, scrollIndicatorInsets);

ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, directionalLockEnabled);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, automaticallyAdjustsScrollIndicatorInsets, API_AVAILABLE(ios(13.0)));
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, bounces);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, bouncesZoom);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, alwaysBounceVertical);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, alwaysBounceHorizontal);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, pagingEnabled);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, scrollEnabled);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, showsVerticalScrollIndicator);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, showsHorizontalScrollIndicator);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, delaysContentTouches);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, canCancelContentTouches);
ZQ_CHAIN_TOOL_SCROLL_INTERFACE(BOOL, scrollsToTop);

#pragma mark - Chain Method

- (T(^)(CGPoint, BOOL))setContentOffset;
- (T(^)(CGRect, BOOL))scrollRectToVisible;
- (T(^)(CGFloat, BOOL))setZoomScale;
- (T(^)(CGRect, BOOL))zoomToRect;

@end

