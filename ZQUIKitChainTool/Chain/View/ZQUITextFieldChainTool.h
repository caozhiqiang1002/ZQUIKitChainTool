//
//  ZQUITextFieldChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/20.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseViewChainTool.h"

@class ZQUITextFieldChainTool;

@interface ZQUITextFieldChainTool : ZQBaseViewChainTool<ZQUITextFieldChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, id<UITextFieldDelegate>, delegate);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, UIColor *, textColor);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, UIFont *, font);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, NSString *, text);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, NSString *, placeholder);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, NSAttributedString *, attributedText);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, NSAttributedString *, attributedPlaceholder);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, UIImage *, background);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, UIImage *, disabledBackground);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, UIView *, leftView);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, UIView *, rightView);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, UIView *, inputView);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, UIView *, inputAccessoryView);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, NSTextAlignment, textAlignment);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, UITextBorderStyle, borderStyle);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, CGFloat, minimumFontSize);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, UITextFieldViewMode, clearButtonMode);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, UITextFieldViewMode, rightViewMode);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, BOOL, clearsOnBeginEditing);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, BOOL, adjustsFontSizeToFitWidth);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, BOOL, allowsEditingTextAttributes);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITextFieldChainTool, BOOL, clearsOnInsertion);

#pragma mark - Chain Method

- (ZQUITextFieldChainTool *(^)(CGRect))drawTextInRect;
- (ZQUITextFieldChainTool *(^)(CGRect))drawPlaceholderInRect;   

@end
