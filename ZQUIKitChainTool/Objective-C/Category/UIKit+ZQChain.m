//
//  UIKit+ZQChain.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/29.
//

#import "UIKit+ZQChain.h"
#import <objc/runtime.h>

// 链式工具对象创建（视图）
#define ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(class, method) \
- (class *)method { \
    class *tool = objc_getAssociatedObject(self, @selector(method)); \
    if (!tool) { \
        tool = [[class alloc] initWithView:self]; \
        objc_setAssociatedObject(self, @selector(method), tool, OBJC_ASSOCIATION_RETAIN_NONATOMIC); \
    } \
    return tool; \
} \

// 链式工具对象创建（手势）
#define ZQ_UIKIT_CATEGORY_GESTURE_TOOL_IMPLEMENT(class, method) \
- (class *)method { \
    class *tool = objc_getAssociatedObject(self, @selector(method)); \
    if (!tool) { \
        tool = [[class alloc] initWithGesture:self]; \
        objc_setAssociatedObject(self, @selector(method), tool, OBJC_ASSOCIATION_RETAIN_NONATOMIC); \
    } \
    return tool; \
} \

// 链式工具对象创建 (BarItem)
#define ZQ_UIKIT_CATEGORY_BAR_TOOL_IMPLEMENT(class, method) \
- (class *)method { \
    class *tool = objc_getAssociatedObject(self, @selector(method)); \
    if (!tool) { \
        tool = [[class alloc] initWithItem:self]; \
        objc_setAssociatedObject(self, @selector(method), tool, OBJC_ASSOCIATION_RETAIN_NONATOMIC); \
    } \
    return tool; \
} \

@implementation UIView (ZQChain)

ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIViewChainTool, viewTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUILabelChainTool, labelTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIImageViewChainTool, imageViewTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIScrollViewChainTool, scrollViewTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUITableViewChainTool, tableViewTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUICollectionViewChainTool, collectionViewTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUITextViewChainTool, textViewTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUITextFieldChainTool, textFieldTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIPickerViewChainTool, pickerViewTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQWKWebViewChainTool, webViewTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIProgressViewChainTool, progressViewTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIActivityIndicatorViewChainTool, activityIndicatorViewTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUICollectionReusableViewChainTool, reusableViewTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUICollectionViewCellChainTool, collectionCellTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUITableViewCellChainTool, tableCellTool);

@end


@implementation UIControl (ZQChain)

ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIControlChainTool, controlTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIButtonChainTool, buttonTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIDatePickerChainTool, datePickerTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUIPageControlChainTool, pageControlTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUISegmentedControlChainTool, segmentedControlTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUISliderChainTool, sliderTool);
ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(ZQUISwitchChainTool, switchTool);

@end


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


@implementation UIBarItem (ZQChain)

ZQ_UIKIT_CATEGORY_BAR_TOOL_IMPLEMENT(ZQUIBarItemChainTool, barItemTool);
ZQ_UIKIT_CATEGORY_BAR_TOOL_IMPLEMENT(ZQUIBarButtonItemChainTool, barButtonItemTool);
ZQ_UIKIT_CATEGORY_BAR_TOOL_IMPLEMENT(ZQUITabBarItemChainTool, tabBarItemTool);

@end
