//
//  ZQUIButtonChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/18.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseControllChainTool.h"

@class ZQUIButtonChainTool;

@interface ZQUIButtonChainTool : ZQBaseControllChainTool<ZQUIButtonChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUIButtonChainTool, UIEdgeInsets, contentEdgeInsets);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIButtonChainTool, UIEdgeInsets, titleEdgeInsets);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIButtonChainTool, UIEdgeInsets, imageEdgeInsets);

ZQ_CHAIN_TOOL_INTERFACE(ZQUIButtonChainTool, BOOL, adjustsImageWhenHighlighted);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIButtonChainTool, BOOL, adjustsImageWhenDisabled);

#pragma mark - Chain Method

- (ZQUIButtonChainTool *(^)(NSString *, UIControlState))setTitle;
- (ZQUIButtonChainTool *(^)(UIColor *, UIControlState))setTitleColor;
- (ZQUIButtonChainTool *(^)(UIColor *, UIControlState))setTitleShadowColor;
- (ZQUIButtonChainTool *(^)(UIImage *, UIControlState))setImage;
- (ZQUIButtonChainTool *(^)(UIImage *, UIControlState))setBackgroundImage;
- (ZQUIButtonChainTool *(^)(NSAttributedString *, UIControlState))setAttributedTitle;
- (ZQUIButtonChainTool *(^)(UIFont *))setFont;
- (ZQUIButtonChainTool *(^)(NSTextAlignment))setTextAlignment;

@end
