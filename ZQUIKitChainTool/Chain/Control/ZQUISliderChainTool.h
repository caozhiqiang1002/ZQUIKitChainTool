//
//  ZQUISliderChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseControllChainTool.h"

@class ZQUISliderChainTool;

@interface ZQUISliderChainTool : ZQBaseControllChainTool<ZQUISliderChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUISliderChainTool, float, value);
ZQ_CHAIN_TOOL_INTERFACE(ZQUISliderChainTool, float, minimumValue);
ZQ_CHAIN_TOOL_INTERFACE(ZQUISliderChainTool, float, maximumValue);

ZQ_CHAIN_TOOL_INTERFACE(ZQUISliderChainTool, UIImage *, minimumValueImage);
ZQ_CHAIN_TOOL_INTERFACE(ZQUISliderChainTool, UIImage *, maximumValueImage);

ZQ_CHAIN_TOOL_INTERFACE(ZQUISliderChainTool, BOOL, continuous);

ZQ_CHAIN_TOOL_INTERFACE(ZQUISliderChainTool, UIColor *, minimumTrackTintColor);
ZQ_CHAIN_TOOL_INTERFACE(ZQUISliderChainTool, UIColor *, maximumTrackTintColor);
ZQ_CHAIN_TOOL_INTERFACE(ZQUISliderChainTool, UIColor *, thumbTintColor);

#pragma mark - Chain Method

- (ZQUISliderChainTool *(^)(UIImage *, UIControlState))setThumbImage;
- (ZQUISliderChainTool *(^)(UIImage *, UIControlState))setMinimumTrackImage;
- (ZQUISliderChainTool *(^)(UIImage *, UIControlState))setMaximumTrackImage;

@end
