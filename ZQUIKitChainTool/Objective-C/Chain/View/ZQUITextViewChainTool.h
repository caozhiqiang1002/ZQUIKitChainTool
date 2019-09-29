//
//  ZQUITextViewChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/20.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseScrollChainTool.h"

@class ZQUITextViewChainTool;

@interface ZQUITextViewChainTool : ZQBaseScrollChainTool<ZQUITextViewChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, id<UITextViewDelegate>, delegate);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, UIView *, inputView);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, UIView *, inputAccessoryView);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, NSString *, text);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, UIFont *, font);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, UIColor *, textColor);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, NSAttributedString *, attributedText);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, NSTextAlignment, textAlignment);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, NSRange, selectedRange);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, UIDataDetectorTypes, dataDetectorTypes);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, UIEdgeInsets, textContainerInset);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, BOOL, editable);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, BOOL, selectable);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, BOOL, allowsEditingTextAttributes);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, BOOL, clearsOnInsertion);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextViewChainTool, BOOL, usesStandardTextScaling, API_AVAILABLE(ios(13.0)));

#pragma mark - Chain Method

- (ZQUITextViewChainTool *(^)(NSRange))scrollRangeToVisible;

@end
