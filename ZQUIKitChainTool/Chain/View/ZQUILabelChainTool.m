//
//  ZQUILabelChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/18.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUILabelChainTool.h"

@implementation ZQUILabelChainTool

ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, NSString *, text);
ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, NSAttributedString *, attributedText);

ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, UIFont *, font);
ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, UIColor *, textColor);
ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, UIColor *, shadowColor);
ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, UIColor *, highlightedTextColor);

ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, NSTextAlignment, textAlignment);
ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, NSLineBreakMode, lineBreakMode);
ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, UIBaselineAdjustment, baselineAdjustment);

ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, BOOL, highlighted);
ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, BOOL, enabled);
ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, BOOL, adjustsFontSizeToFitWidth);
ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, CGSize, shadowOffset);
ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, CGFloat, minimumScaleFactor);
ZQ_CHAIN_TOOL_IMPLEMENT(UILabel, ZQUILabelChainTool, NSInteger, numberOfLines);


@end
