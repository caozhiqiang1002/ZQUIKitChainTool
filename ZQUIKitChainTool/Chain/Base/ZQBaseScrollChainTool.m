//
//  ZQBaseScrollChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/19.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseScrollChainTool.h"

#define ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(attr_class, attr_name, ...) \
- (id(^)(attr_class))attr_name __VA_ARGS__ { \
    return ^id(attr_class attr_name) { \
        self.scrollView.attr_name = attr_name; \
        return self; \
    }; \
} \

@implementation ZQBaseScrollChainTool

- (UIScrollView *)scrollView {
    return self.view;
}

ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(id<UIScrollViewDelegate>, delegate);

ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(UIRefreshControl *, refreshControl, API_AVAILABLE(ios(10.0)));

ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(CGPoint, contentOffset);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(CGSize, contentSize);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(CGFloat, minimumZoomScale);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(CGFloat, maximumZoomScale);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(CGFloat, zoomScale);

ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(UIScrollViewContentInsetAdjustmentBehavior, contentInsetAdjustmentBehavior, API_AVAILABLE(ios(11.0)));
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(UIScrollViewIndicatorStyle, indicatorStyle);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(UIScrollViewKeyboardDismissMode, keyboardDismissMode);

ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(UIEdgeInsets, contentInset);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(UIEdgeInsets, scrollIndicatorInsets);

ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, directionalLockEnabled);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, automaticallyAdjustsScrollIndicatorInsets, API_AVAILABLE(ios(13.0)));
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, bounces);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, bouncesZoom);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, alwaysBounceVertical);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, alwaysBounceHorizontal);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, pagingEnabled);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, scrollEnabled);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, showsVerticalScrollIndicator);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, showsHorizontalScrollIndicator);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, delaysContentTouches);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, canCancelContentTouches);
ZQ_CHAIN_TOOL_SCROLL_IMPLEMENT(BOOL, scrollsToTop);

- (id(^)(CGPoint, BOOL))setContentOffset {
    return ^id(CGPoint contentOffset, BOOL animated) {
        UIScrollView *scrollView = self.view;
        [scrollView setContentOffset:contentOffset animated:animated];
        return self;
    };
}

- (id(^)(CGRect, BOOL))scrollRectToVisible {
    return ^id(CGRect rect, BOOL animated) {
        UIScrollView *scrollView = self.view;
        [scrollView scrollRectToVisible:rect animated:animated];
        return self;
    };
}
- (id(^)(CGFloat, BOOL))setZoomScale {
    return ^id(CGFloat scale, BOOL animated) {
        UIScrollView *scrollView = self.view;
        [scrollView setZoomScale:scale animated:animated];
        return self;
    };
}
- (id(^)(CGRect, BOOL))zoomToRect {
    return ^id(CGRect rect, BOOL animated) {
        UIScrollView *scrollView = self.view;
        [scrollView zoomToRect:rect animated:animated];
        return self;
    };
}

@end
