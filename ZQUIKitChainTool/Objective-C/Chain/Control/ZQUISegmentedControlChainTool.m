//
//  ZQUISegmentedControlChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUISegmentedControlChainTool.h"

@implementation ZQUISegmentedControlChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(UISegmentedControl, ZQUISegmentedControlChainTool, BOOL, momentary);
ZQ_CHAIN_TOOL_IMPLEMENT(UISegmentedControl, ZQUISegmentedControlChainTool, BOOL, apportionsSegmentWidthsByContent);

ZQ_CHAIN_TOOL_IMPLEMENT(UISegmentedControl, ZQUISegmentedControlChainTool, NSInteger, selectedSegmentIndex);

ZQ_CHAIN_TOOL_IMPLEMENT(UISegmentedControl, ZQUISegmentedControlChainTool, UIColor *, selectedSegmentTintColor, API_AVAILABLE(ios(13.0)));

#pragma mark - Chain Method

- (ZQUISegmentedControlChainTool *(^)(NSString *, NSUInteger, BOOL))insertSegment_title {
    return ^ZQUISegmentedControlChainTool *(NSString *title, NSUInteger segment, BOOL animated) {
        UISegmentedControl *control = self.view;
        [control insertSegmentWithTitle:title atIndex:segment animated:animated];
        return self;
    };
}

- (ZQUISegmentedControlChainTool *(^)(UIImage *, NSUInteger, BOOL))insertSegment_image {
    return ^ZQUISegmentedControlChainTool *(UIImage *image, NSUInteger segment, BOOL animated) {
        UISegmentedControl *control = self.view;
        [control insertSegmentWithImage:image atIndex:segment animated:animated];
        return self;
    };
}

- (ZQUISegmentedControlChainTool *(^)(NSUInteger, BOOL))removeSegment {
    return ^ZQUISegmentedControlChainTool *(NSUInteger segment, BOOL animated) {
        UISegmentedControl *control = self.view;
        [control removeSegmentAtIndex:segment animated:animated];
        return self;
    };
}

- (ZQUISegmentedControlChainTool *(^)(void))removeAllSegments {
    return ^ZQUISegmentedControlChainTool *(void) {
        UISegmentedControl *control = self.view;
        [control removeAllSegments];
        return self;
    };
}

- (ZQUISegmentedControlChainTool *(^)(NSString *, NSUInteger))setTitle {
    return ^ZQUISegmentedControlChainTool *(NSString *title, NSUInteger segment) {
        UISegmentedControl *control = self.view;
        [control setTitle:title forSegmentAtIndex:segment];
        return self;
    };
}

- (ZQUISegmentedControlChainTool *(^)(UIImage *, NSUInteger))setImage {
    return ^ZQUISegmentedControlChainTool *(UIImage *image, NSUInteger segment) {
        UISegmentedControl *control = self.view;
        [control setImage:image forSegmentAtIndex:segment];
        return self;
    };
}

- (ZQUISegmentedControlChainTool *(^)(CGFloat, NSUInteger))setWidth {
    return ^ZQUISegmentedControlChainTool *(CGFloat width, NSUInteger segment) {
        UISegmentedControl *control = self.view;
        [control setWidth:width forSegmentAtIndex:segment];
        return self;
    };
}

- (ZQUISegmentedControlChainTool *(^)(CGSize, NSUInteger))setContentOffset {
    return ^ZQUISegmentedControlChainTool *(CGSize offset, NSUInteger segment) {
        UISegmentedControl *control = self.view;
        [control setContentOffset:offset forSegmentAtIndex:segment];
        return self;
    };
}

- (ZQUISegmentedControlChainTool *(^)(BOOL, NSUInteger))setEnabled {
    return ^ZQUISegmentedControlChainTool *(BOOL enabled, NSUInteger segment) {
        UISegmentedControl *control = self.view;
        [control setEnabled:enabled forSegmentAtIndex:segment];
        return self;
    };
}

- (ZQUISegmentedControlChainTool *(^)(UIImage *, UIControlState, UIBarMetrics))setBackgroundImage {
    return ^ZQUISegmentedControlChainTool *(UIImage *image, UIControlState state, UIBarMetrics barMetrics) {
        UISegmentedControl *control = self.view;
        [control setBackgroundImage:image forState:state barMetrics:barMetrics];
        return self;
    };
}

- (ZQUISegmentedControlChainTool *(^)(UIImage *, UIControlState, UIControlState, UIBarMetrics))setDividerImage {
    return ^ZQUISegmentedControlChainTool *(UIImage *image, UIControlState leftState, UIControlState rightState, UIBarMetrics barMetrics) {
        UISegmentedControl *control = self.view;
        [control setDividerImage:image forLeftSegmentState:leftState rightSegmentState:rightState barMetrics:barMetrics];
        return self;
    };
}

- (ZQUISegmentedControlChainTool *(^)(NSDictionary<NSAttributedStringKey,id> *, UIControlState))setTitleTextAttributes {
    return ^ZQUISegmentedControlChainTool *(NSDictionary<NSAttributedStringKey,id> *attributes, UIControlState state) {
        UISegmentedControl *control = self.view;
        [control setTitleTextAttributes:attributes forState:state];
        return self;
    };
}

- (ZQUISegmentedControlChainTool *(^)(UIOffset, UISegmentedControlSegment, UIBarMetrics))setContentPositionAdjustment {
    return ^ZQUISegmentedControlChainTool *(UIOffset adjustment, UISegmentedControlSegment leftCenterRightOrAlone, UIBarMetrics barMetrics) {
        UISegmentedControl *control = self.view;
        [control setContentPositionAdjustment:adjustment forSegmentType:leftCenterRightOrAlone barMetrics:barMetrics];
        return self;
    };
}

@end
