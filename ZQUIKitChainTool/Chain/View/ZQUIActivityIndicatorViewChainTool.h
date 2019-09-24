//
//  ZQUIActivityIndicatorViewChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseViewChainTool.h"

@class ZQUISegmentedControlChainTool;

@interface ZQUIActivityIndicatorViewChainTool : ZQBaseViewChainTool<ZQUISegmentedControlChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUIActivityIndicatorViewChainTool, UIActivityIndicatorViewStyle, activityIndicatorViewStyle);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIActivityIndicatorViewChainTool, BOOL, hidesWhenStopped);

#pragma mark - Chain Method

- (ZQUIActivityIndicatorViewChainTool *(^)(void))startAnimating;
- (ZQUIActivityIndicatorViewChainTool *(^)(void))stopAnimating;

@end
