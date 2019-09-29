//
//  ZQUIProgressViewChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUIProgressViewChainTool.h"

@implementation ZQUIProgressViewChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(UIProgressView, ZQUIProgressViewChainTool, UIProgressViewStyle, progressViewStyle);
ZQ_CHAIN_TOOL_IMPLEMENT(UIProgressView, ZQUIProgressViewChainTool, float, progress);

ZQ_CHAIN_TOOL_IMPLEMENT(UIProgressView, ZQUIProgressViewChainTool, UIColor *, progressTintColor);
ZQ_CHAIN_TOOL_IMPLEMENT(UIProgressView, ZQUIProgressViewChainTool, UIColor *, trackTintColor);

ZQ_CHAIN_TOOL_IMPLEMENT(UIProgressView, ZQUIProgressViewChainTool, UIImage *, progressImage);
ZQ_CHAIN_TOOL_IMPLEMENT(UIProgressView, ZQUIProgressViewChainTool, UIImage *, trackImage);

ZQ_CHAIN_TOOL_IMPLEMENT(UIProgressView, ZQUIProgressViewChainTool, NSProgress *, observedProgress);

#pragma mark - Chain Method

- (ZQUIProgressViewChainTool *(^)(float, BOOL))setProgress {
    return ^ZQUIProgressViewChainTool *(float progress, BOOL animated) {
        UIProgressView *progressView = self.view;
        [progressView setProgress:progress animated:animated];
        return self;
    };
}

@end
