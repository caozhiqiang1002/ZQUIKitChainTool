//
//  ZQUIActivityIndicatorViewChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUIActivityIndicatorViewChainTool.h"

@implementation ZQUIActivityIndicatorViewChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(UIActivityIndicatorView, ZQUIActivityIndicatorViewChainTool, UIActivityIndicatorViewStyle, activityIndicatorViewStyle);
ZQ_CHAIN_TOOL_IMPLEMENT(UIActivityIndicatorView, ZQUIActivityIndicatorViewChainTool, BOOL, hidesWhenStopped);

#pragma mark - Chain Method

- (ZQUIActivityIndicatorViewChainTool *(^)(void))startAnimating {
    return ^ZQUIActivityIndicatorViewChainTool *(void) {
        UIActivityIndicatorView *indicatorView = self.view;
        [indicatorView startAnimating];
        return self;
    };
}

- (ZQUIActivityIndicatorViewChainTool *(^)(void))stopAnimating {
    return ^ZQUIActivityIndicatorViewChainTool *(void) {
        UIActivityIndicatorView *indicatorView = self.view;
        [indicatorView stopAnimating];
        return self;
    };
}

@end
