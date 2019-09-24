//
//  ZQUITextFieldChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/20.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUITextFieldChainTool.h"

@implementation ZQUITextFieldChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, id<UITextFieldDelegate>, delegate);

ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, UIColor *, textColor);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, UIFont *, font);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, NSString *, text);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, NSString *, placeholder);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, NSAttributedString *, attributedText);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, NSAttributedString *, attributedPlaceholder);

ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, UIImage *, background);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, UIImage *, disabledBackground);

ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, UIView *, leftView);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, UIView *, rightView);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, UIView *, inputView);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, UIView *, inputAccessoryView);

ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, NSTextAlignment, textAlignment);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, UITextBorderStyle, borderStyle);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, CGFloat, minimumFontSize);

ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, UITextFieldViewMode, clearButtonMode);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, UITextFieldViewMode, rightViewMode);

ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, BOOL, clearsOnBeginEditing);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, BOOL, adjustsFontSizeToFitWidth);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, BOOL, allowsEditingTextAttributes);
ZQ_CHAIN_TOOL_IMPLEMENT(UITextField, ZQUITextFieldChainTool, BOOL, clearsOnInsertion);

#pragma mark - Chain Method

- (ZQUITextFieldChainTool *(^)(CGRect))drawTextInRect {
    return ^ZQUITextFieldChainTool *(CGRect rect) {
        UITextField *textField = self.view;
        [textField drawTextInRect:rect];
        return self;
    };
}

- (ZQUITextFieldChainTool *(^)(CGRect))drawPlaceholderInRect {
    return ^ZQUITextFieldChainTool *(CGRect rect) {
        UITextField *textField = self.view;
        [textField drawPlaceholderInRect:rect];
        return self;
    };
}

@end
