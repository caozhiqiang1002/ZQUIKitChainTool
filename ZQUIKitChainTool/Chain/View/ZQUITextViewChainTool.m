//
//  ZQUITextViewChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/20.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUITextViewChainTool.h"

@implementation ZQUITextViewChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, id<UITextViewDelegate>, delegate);

ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, UIView *, inputView);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, UIView *, inputAccessoryView);

ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, NSString *, text);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, UIFont *, font);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, UIColor *, textColor);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, NSAttributedString *, attributedText);

ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, NSTextAlignment, textAlignment);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, NSRange, selectedRange);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, UIDataDetectorTypes, dataDetectorTypes);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, UIEdgeInsets, textContainerInset);

ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, BOOL, editable);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, BOOL, selectable);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, BOOL, allowsEditingTextAttributes);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, BOOL, clearsOnInsertion);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextView, ZQUITextViewChainTool, BOOL, usesStandardTextScaling, API_AVAILABLE(ios(13.0)));

#pragma mark - Chain Method

- (ZQUITextViewChainTool *(^)(NSRange))scrollRangeToVisible {
    return ^ZQUITextViewChainTool *(NSRange range) {
        UITextView *textView = self.view;
        [textView scrollRangeToVisible:range];
        return self;
    };
}

@end
