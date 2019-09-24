//
//  ZQUIButtonChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/18.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUIButtonChainTool.h"

@implementation ZQUIButtonChainTool

ZQ_CHAIN_TOOL_IMPLEMENT(UIButton, ZQUIButtonChainTool, UIEdgeInsets, contentEdgeInsets);
ZQ_CHAIN_TOOL_IMPLEMENT(UIButton, ZQUIButtonChainTool, UIEdgeInsets, titleEdgeInsets);
ZQ_CHAIN_TOOL_IMPLEMENT(UIButton, ZQUIButtonChainTool, UIEdgeInsets, imageEdgeInsets);

ZQ_CHAIN_TOOL_IMPLEMENT(UIButton, ZQUIButtonChainTool, BOOL, adjustsImageWhenHighlighted);
ZQ_CHAIN_TOOL_IMPLEMENT(UIButton, ZQUIButtonChainTool, BOOL, adjustsImageWhenDisabled);

- (ZQUIButtonChainTool *(^)(NSString *, UIControlState))setTitle {
    return ^ZQUIButtonChainTool *(NSString *title, UIControlState state) {
        UIButton *button = self.view;
        [button setTitle:title forState:state];
        return self;
    };
}

- (ZQUIButtonChainTool *(^)(UIColor *, UIControlState))setTitleColor {
    return ^ZQUIButtonChainTool *(UIColor *titleColor, UIControlState state) {
        UIButton *button = self.view;
        [button setTitleColor:titleColor forState:state];
        return self;
    };
}

- (ZQUIButtonChainTool *(^)(UIColor *, UIControlState))setTitleShadowColor {
    return ^ZQUIButtonChainTool *(UIColor *titleShadowColor, UIControlState state) {
        UIButton *button = self.view;
        [button setTitleShadowColor:titleShadowColor forState:state];
        return self;
    };
}

- (ZQUIButtonChainTool *(^)(UIImage *, UIControlState))setImage {
    return ^ZQUIButtonChainTool *(UIImage *image, UIControlState state) {
        UIButton *button = self.view;
        [button setImage:image forState:state];
        return self;
    };
}

- (ZQUIButtonChainTool *(^)(UIImage *, UIControlState))setBackgroundImage {
    return ^ZQUIButtonChainTool *(UIImage *backgroundImage, UIControlState state) {
        UIButton *button = self.view;
        [button setImage:backgroundImage forState:state];
        return self;
    };
}

- (ZQUIButtonChainTool *(^)(NSAttributedString *, UIControlState))setAttributedTitle {
    return ^ZQUIButtonChainTool *(NSAttributedString *attributedTitle, UIControlState state) {
        UIButton *button = self.view;
        [button setAttributedTitle:attributedTitle forState:state];
        return self;
    };
}

- (ZQUIButtonChainTool *(^)(UIFont *))setFont {
    return ^ZQUIButtonChainTool *(UIFont *font) {
        UIButton *button = self.view;
        button.titleLabel.font = font;
        return self;
    };
}

- (ZQUIButtonChainTool *(^)(NSTextAlignment))setTextAlignment {
    return ^ZQUIButtonChainTool *(NSTextAlignment alignment) {
        UIButton *button = self.view;
        button.titleLabel.textAlignment = alignment;
        return self;
    };
}

@end
