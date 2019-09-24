//
//  UIControl+ZQChain.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZQUIKitChainTool.h"

@interface UIControl (ZQChain)

- (ZQUIControlChainTool *)controlTool;
- (ZQUIButtonChainTool *)buttonTool;
- (ZQUIDatePickerChainTool *)datePickerTool;
- (ZQUIPageControlChainTool *)pageControlTool;
- (ZQUISegmentedControlChainTool *)segmentedControlTool;
- (ZQUISliderChainTool *)sliderTool;
- (ZQUISwitchChainTool *)switchTool;

@end
