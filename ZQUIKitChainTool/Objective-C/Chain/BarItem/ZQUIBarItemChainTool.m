//
//  ZQUIBarItemChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUIBarItemChainTool.h"

@implementation ZQUIBarItemChainTool

@end



@implementation ZQUIBarButtonItemChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(UIBarButtonItem, ZQUIBarButtonItemChainTool, UIBarButtonItemStyle, style);
ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(UIBarButtonItem, ZQUIBarButtonItemChainTool, CGFloat, width);

ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(UIBarButtonItem, ZQUIBarButtonItemChainTool, NSSet<NSString *> *, possibleTitles);
ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(UIBarButtonItem, ZQUIBarButtonItemChainTool, __kindof UIView *, customView);

ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(UIBarButtonItem, ZQUIBarButtonItemChainTool, SEL, action);
ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(UIBarButtonItem, ZQUIBarButtonItemChainTool, id, target);

ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(UIBarButtonItem, ZQUIBarButtonItemChainTool, UIColor *, tintColor);

#pragma mark - Chain Method

- (ZQUIBarButtonItemChainTool *(^)(UIImage *, UIControlState, UIBarMetrics))setBackgroundImage {
    return ^ZQUIBarButtonItemChainTool *(UIImage *backgroundImage, UIControlState state, UIBarMetrics barMetrics) {
        UIBarButtonItem *item = self.barItem;
        [item setBackgroundImage:backgroundImage forState:state barMetrics:barMetrics];
        return self;
    };
}

- (ZQUIBarButtonItemChainTool *(^)(UIImage *, UIControlState, UIBarMetrics))setBackButtonBackgroundImage {
    return ^ZQUIBarButtonItemChainTool *(UIImage *backgroundImage, UIControlState state, UIBarMetrics barMetrics) {
        UIBarButtonItem *item = self.barItem;
        [item setBackButtonBackgroundImage:backgroundImage forState:state barMetrics:barMetrics];
        return self;
    };
}

- (ZQUIBarButtonItemChainTool *(^)(UIImage *, UIControlState, UIBarButtonItemStyle, UIBarMetrics))setBackgroundImage_style {
    return ^ZQUIBarButtonItemChainTool *(UIImage *backgroundImage, UIControlState state, UIBarButtonItemStyle style, UIBarMetrics barMetrics) {
        UIBarButtonItem *item = self.barItem;
        [item setBackgroundImage:backgroundImage forState:state style:style barMetrics:barMetrics];
        return self;
    };
}

- (ZQUIBarButtonItemChainTool *(^)(CGFloat, UIBarMetrics))setBackgroundVerticalPositionAdjustment {
    return ^ZQUIBarButtonItemChainTool *(CGFloat adjustment, UIBarMetrics barMetrics) {
        UIBarButtonItem *item = self.barItem;
        [item setBackgroundVerticalPositionAdjustment:adjustment forBarMetrics:barMetrics];
        return self;
    };
}

- (ZQUIBarButtonItemChainTool *(^)(CGFloat, UIBarMetrics))setBackButtonBackgroundVerticalPositionAdjustment {
    return ^ZQUIBarButtonItemChainTool *(CGFloat adjustment, UIBarMetrics barMetrics) {
        UIBarButtonItem *item = self.barItem;
        [item setBackButtonBackgroundVerticalPositionAdjustment:adjustment forBarMetrics:barMetrics];
        return self;
    };
}

- (ZQUIBarButtonItemChainTool *(^)(UIOffset, UIBarMetrics))setTitlePositionAdjustment {
    return ^ZQUIBarButtonItemChainTool *(UIOffset adjustment, UIBarMetrics barMetrics) {
        UIBarButtonItem *item = self.barItem;
        [item setTitlePositionAdjustment:adjustment forBarMetrics:barMetrics];
        return self;
    };
}

- (ZQUIBarButtonItemChainTool *(^)(UIOffset, UIBarMetrics))setBackButtonTitlePositionAdjustment {
    return ^ZQUIBarButtonItemChainTool *(UIOffset adjustment, UIBarMetrics barMetrics) {
        UIBarButtonItem *item = self.barItem;
        [item setBackButtonTitlePositionAdjustment:adjustment forBarMetrics:barMetrics];
        return self;
    };
}

@end



@implementation ZQUITabBarItemChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(UITabBarItem, ZQUITabBarItemChainTool, UIImage *, selectedImage);
ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(UITabBarItem, ZQUITabBarItemChainTool, NSString *, badgeValue);
ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(UITabBarItem, ZQUITabBarItemChainTool, UIColor *, badgeColor, API_AVAILABLE(ios(10.0)));
ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(UITabBarItem, ZQUITabBarItemChainTool, UITabBarAppearance *, standardAppearance, API_AVAILABLE(ios(13.0)));

ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(UITabBarItem, ZQUITabBarItemChainTool, UIOffset, titlePositionAdjustment);

#pragma mark - Chain Method

- (ZQUITabBarItemChainTool *(^)(NSDictionary<NSAttributedStringKey,id> *,UIControlState))setBadgeTextAttributes API_AVAILABLE(ios(10.0)) {
    return ^ZQUITabBarItemChainTool *(NSDictionary<NSAttributedStringKey,id> *attributes, UIControlState state) {
        UITabBarItem *item = self.barItem;
        [item setBadgeTextAttributes:attributes forState:state];
        return self;
    };
}

@end
