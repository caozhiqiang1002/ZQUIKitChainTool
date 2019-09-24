//
//  ZQUIPageControlChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseControllChainTool.h"

@class ZQUIPageControlChainTool;

@interface ZQUIPageControlChainTool : ZQBaseControllChainTool<ZQUIPageControlChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUIPageControlChainTool, NSInteger, numberOfPages);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIPageControlChainTool, NSInteger, currentPage);

ZQ_CHAIN_TOOL_INTERFACE(ZQUIPageControlChainTool, BOOL, hidesForSinglePage);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIPageControlChainTool, BOOL, defersCurrentPageDisplay);

ZQ_CHAIN_TOOL_INTERFACE(ZQUIPageControlChainTool, UIColor *, pageIndicatorTintColor);
ZQ_CHAIN_TOOL_INTERFACE(ZQUIPageControlChainTool, UIColor *, currentPageIndicatorTintColor);

#pragma mark - Chain Method

- (ZQUIPageControlChainTool *(^)(void))updateCurrentPageDisplay;

@end

