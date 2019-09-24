//
//  ZQUIImageViewChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/19.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseViewChainTool.h"

@class ZQUIImageViewChainTool;

@interface ZQUIImageViewChainTool : ZQBaseViewChainTool<ZQUIImageViewChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUIImageViewChainTool, UIImage *, image);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIImageViewChainTool, UIImage *, highlightedImage);

ZQ_CHAIN_TOOL_INTERFACE(ZQUIImageViewChainTool, UIImageSymbolConfiguration *, preferredSymbolConfiguration, API_AVAILABLE(ios(13.0)));

ZQ_CHAIN_TOOL_INTERFACE(ZQUIImageViewChainTool, NSArray<UIImage *> *, animationImages);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIImageViewChainTool, NSArray<UIImage *> *, highlightedAnimationImages);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIImageViewChainTool, NSTimeInterval, animationDuration);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIImageViewChainTool, NSInteger, animationRepeatCount);

ZQ_CHAIN_TOOL_INTERFACE(ZQUIImageViewChainTool, BOOL, highlighted);

@end

