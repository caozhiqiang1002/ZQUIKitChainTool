//
//  ZQUIPageControlChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUIPageControlChainTool.h"

@implementation ZQUIPageControlChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(UIPageControl, ZQUIPageControlChainTool, NSInteger, numberOfPages);
ZQ_CHAIN_TOOL_IMPLEMENT(UIPageControl, ZQUIPageControlChainTool, NSInteger, currentPage);

ZQ_CHAIN_TOOL_IMPLEMENT(UIPageControl, ZQUIPageControlChainTool, BOOL, hidesForSinglePage);
ZQ_CHAIN_TOOL_IMPLEMENT(UIPageControl, ZQUIPageControlChainTool, BOOL, defersCurrentPageDisplay);

ZQ_CHAIN_TOOL_IMPLEMENT(UIPageControl, ZQUIPageControlChainTool, UIColor *, pageIndicatorTintColor);
ZQ_CHAIN_TOOL_IMPLEMENT(UIPageControl, ZQUIPageControlChainTool, UIColor *, currentPageIndicatorTintColor);

#pragma mark - Chain Method

- (ZQUIPageControlChainTool *(^)(void))updateCurrentPageDisplay {
    return ^ZQUIPageControlChainTool *(void) {
        UIPageControl *pageControl = self.view;
        [pageControl updateCurrentPageDisplay];
        return self;
    };
}

@end
