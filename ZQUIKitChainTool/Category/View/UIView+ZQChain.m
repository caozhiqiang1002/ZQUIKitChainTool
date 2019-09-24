//
//  UIView+ZQChain.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/17.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "UIView+ZQChain.h"
#import <objc/runtime.h>

// 链式工具对象创建
#define ZQ_UIKIT_CATEGORY_TOOL_IMPLEMENT(class, method) \
- (class *)method { \
    class *tool = objc_getAssociatedObject(self, @selector(method)); \
    if (!tool) { \
        tool = [[class alloc] initWithView:self]; \
        objc_setAssociatedObject(self, @selector(method), tool, OBJC_ASSOCIATION_RETAIN); \
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


@end
