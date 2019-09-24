//
//  ZQUISilderChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUISliderChainTool.h"

@implementation ZQUISliderChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(UISlider, ZQUISliderChainTool, float, value);
ZQ_CHAIN_TOOL_IMPLEMENT(UISlider, ZQUISliderChainTool, float, minimumValue);
ZQ_CHAIN_TOOL_IMPLEMENT(UISlider, ZQUISliderChainTool, float, maximumValue);

ZQ_CHAIN_TOOL_IMPLEMENT(UISlider, ZQUISliderChainTool, UIImage *, minimumValueImage);
ZQ_CHAIN_TOOL_IMPLEMENT(UISlider, ZQUISliderChainTool, UIImage *, maximumValueImage);

ZQ_CHAIN_TOOL_IMPLEMENT(UISlider, ZQUISliderChainTool, BOOL, continuous);

ZQ_CHAIN_TOOL_IMPLEMENT(UISlider, ZQUISliderChainTool, UIColor *, minimumTrackTintColor);
ZQ_CHAIN_TOOL_IMPLEMENT(UISlider, ZQUISliderChainTool, UIColor *, maximumTrackTintColor);
ZQ_CHAIN_TOOL_IMPLEMENT(UISlider, ZQUISliderChainTool, UIColor *, thumbTintColor);

#pragma mark - Chain Method

- (ZQUISliderChainTool *(^)(UIImage *, UIControlState))setThumbImage {
    return ^ZQUISliderChainTool *(UIImage *image, UIControlState state) {
        UISlider *slider = self.view;
        [slider setThumbImage:image forState:state];
        return self;
    };
}

- (ZQUISliderChainTool *(^)(UIImage *, UIControlState))setMinimumTrackImage {
    return ^ZQUISliderChainTool *(UIImage *image, UIControlState state) {
        UISlider *slider = self.view;
        [slider setMinimumTrackImage:image forState:state];
        return self;
    };
}

- (ZQUISliderChainTool *(^)(UIImage *, UIControlState))setMaximumTrackImage {
    return ^ZQUISliderChainTool *(UIImage *image, UIControlState state) {
        UISlider *slider = self.view;
        [slider setMaximumTrackImage:image forState:state];
        return self;
    };
}

@end
