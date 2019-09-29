//
//  ZQUILabelChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/18.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseViewChainTool.h"

@class ZQUILabelChainTool;

@interface ZQUILabelChainTool : ZQBaseViewChainTool<ZQUILabelChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, NSString *, text);
ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, NSAttributedString *, attributedText);
ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, UIFont *, font);
ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, UIColor *, textColor);
ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, UIColor *, shadowColor);
ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, UIColor *, highlightedTextColor);

ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, NSTextAlignment, textAlignment);
ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, NSLineBreakMode, lineBreakMode);
ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, UIBaselineAdjustment, baselineAdjustment);

ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, BOOL, highlighted);
ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, BOOL, enabled);
ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, BOOL, adjustsFontSizeToFitWidth);

ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, CGSize, shadowOffset);
ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, CGFloat, minimumScaleFactor);
ZQ_CHAIN_TOOL_INTERFACE(ZQUILabelChainTool, NSInteger, numberOfLines);

@end
