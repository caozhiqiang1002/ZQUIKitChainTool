//
//  ZQUISegmentedControlChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseControllChainTool.h"

@class ZQUISegmentedControlChainTool;

@interface ZQUISegmentedControlChainTool : ZQBaseControllChainTool<ZQUISegmentedControlChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUISegmentedControlChainTool, BOOL, momentary);
ZQ_CHAIN_TOOL_INTERFACE(ZQUISegmentedControlChainTool, BOOL, apportionsSegmentWidthsByContent);

ZQ_CHAIN_TOOL_INTERFACE(ZQUISegmentedControlChainTool, NSInteger, selectedSegmentIndex);

ZQ_CHAIN_TOOL_INTERFACE(ZQUISegmentedControlChainTool, UIColor *, selectedSegmentTintColor, API_AVAILABLE(ios(13.0)));

#pragma mark - Chain Method

- (ZQUISegmentedControlChainTool *(^)(NSString *, NSUInteger, BOOL))insertSegment_title;
- (ZQUISegmentedControlChainTool *(^)(UIImage *, NSUInteger, BOOL))insertSegment_image;
- (ZQUISegmentedControlChainTool *(^)(NSUInteger, BOOL))removeSegment;
- (ZQUISegmentedControlChainTool *(^)(void))removeAllSegments;

- (ZQUISegmentedControlChainTool *(^)(NSString *, NSUInteger))setTitle;
- (ZQUISegmentedControlChainTool *(^)(UIImage *, NSUInteger))setImage;
- (ZQUISegmentedControlChainTool *(^)(CGFloat, NSUInteger))setWidth;
- (ZQUISegmentedControlChainTool *(^)(CGSize, NSUInteger))setContentOffset;
- (ZQUISegmentedControlChainTool *(^)(BOOL, NSUInteger))setEnabled;

- (ZQUISegmentedControlChainTool *(^)(UIImage *, UIControlState, UIBarMetrics))setBackgroundImage;
- (ZQUISegmentedControlChainTool *(^)(UIImage *, UIControlState, UIControlState, UIBarMetrics))setDividerImage;
- (ZQUISegmentedControlChainTool *(^)(NSDictionary<NSAttributedStringKey,id> *, UIControlState))setTitleTextAttributes;
- (ZQUISegmentedControlChainTool *(^)(UIOffset, UISegmentedControlSegment, UIBarMetrics))setContentPositionAdjustment;

@end
