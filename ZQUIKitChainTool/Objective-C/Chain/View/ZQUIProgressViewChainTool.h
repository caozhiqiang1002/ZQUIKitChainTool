//
//  ZQUIProgressViewChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseViewChainTool.h"

@class ZQUIPageControlChainTool;

@interface ZQUIProgressViewChainTool : ZQBaseViewChainTool<ZQUIPageControlChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUIProgressViewChainTool, UIProgressViewStyle, progressViewStyle);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIProgressViewChainTool, float, progress);

ZQ_CHAIN_TOOL_INTERFACE(ZQUIProgressViewChainTool, UIColor *, progressTintColor);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIProgressViewChainTool, UIColor *, trackTintColor);

ZQ_CHAIN_TOOL_INTERFACE(ZQUIProgressViewChainTool, UIImage *, progressImage);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIProgressViewChainTool, UIImage *, trackImage);

ZQ_CHAIN_TOOL_INTERFACE(ZQUIProgressViewChainTool, NSProgress *, observedProgress);

#pragma mark - Chain Method

- (ZQUIProgressViewChainTool *(^)(float, BOOL))setProgress;

@end

