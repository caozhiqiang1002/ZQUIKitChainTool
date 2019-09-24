//
//  ZQUIImageViewChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/19.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUIImageViewChainTool.h"

@implementation ZQUIImageViewChainTool

ZQ_CHAIN_TOOL_IMPLEMENT(UIImageView, ZQUIImageViewChainTool, UIImage *, image);
ZQ_CHAIN_TOOL_IMPLEMENT(UIImageView, ZQUIImageViewChainTool, UIImage *, highlightedImage);

ZQ_CHAIN_TOOL_IMPLEMENT(UIImageView, ZQUIImageViewChainTool, UIImageSymbolConfiguration *, preferredSymbolConfiguration, API_AVAILABLE(ios(13.0)));

ZQ_CHAIN_TOOL_IMPLEMENT(UIImageView, ZQUIImageViewChainTool, NSArray<UIImage *> *, animationImages);
ZQ_CHAIN_TOOL_IMPLEMENT(UIImageView, ZQUIImageViewChainTool, NSArray<UIImage *> *, highlightedAnimationImages);

ZQ_CHAIN_TOOL_IMPLEMENT(UIImageView, ZQUIImageViewChainTool, NSTimeInterval, animationDuration);
ZQ_CHAIN_TOOL_IMPLEMENT(UIImageView, ZQUIImageViewChainTool, NSInteger, animationRepeatCount);

ZQ_CHAIN_TOOL_IMPLEMENT(UIImageView, ZQUIImageViewChainTool, BOOL, highlighted);

@end
