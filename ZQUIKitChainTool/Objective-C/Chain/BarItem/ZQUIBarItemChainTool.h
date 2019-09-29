//
//  ZQUIBarItemChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseBarItemChainTool.h"

@class ZQUIBarItemChainTool;
@class ZQUIBarButtonItemChainTool;
@class ZQUITabBarItemChainTool;



@interface ZQUIBarItemChainTool : ZQBaseBarItemChainTool<ZQUIBarItemChainTool *>

@end



@interface ZQUIBarButtonItemChainTool : ZQBaseBarItemChainTool<ZQUIBarButtonItemChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_ITEM_INTERFACE(ZQUIBarButtonItemChainTool, UIBarButtonItemStyle, style);
ZQ_CHAIN_TOOL_ITEM_INTERFACE(ZQUIBarButtonItemChainTool, CGFloat, width);

ZQ_CHAIN_TOOL_ITEM_INTERFACE(ZQUIBarButtonItemChainTool, NSSet<NSString *> *, possibleTitles);
ZQ_CHAIN_TOOL_ITEM_INTERFACE(ZQUIBarButtonItemChainTool, __kindof UIView *, customView);

ZQ_CHAIN_TOOL_ITEM_INTERFACE(ZQUIBarButtonItemChainTool, SEL, action);
ZQ_CHAIN_TOOL_ITEM_INTERFACE(ZQUIBarButtonItemChainTool, id, target);

ZQ_CHAIN_TOOL_ITEM_INTERFACE(ZQUIBarButtonItemChainTool, UIColor *, tintColor);

#pragma mark - Chain Method

- (ZQUIBarButtonItemChainTool *(^)(UIImage *, UIControlState, UIBarMetrics))setBackgroundImage;
- (ZQUIBarButtonItemChainTool *(^)(UIImage *, UIControlState, UIBarMetrics))setBackButtonBackgroundImage;
- (ZQUIBarButtonItemChainTool *(^)(UIImage *, UIControlState, UIBarButtonItemStyle, UIBarMetrics))setBackgroundImage_style;

- (ZQUIBarButtonItemChainTool *(^)(CGFloat, UIBarMetrics))setBackgroundVerticalPositionAdjustment;
- (ZQUIBarButtonItemChainTool *(^)(CGFloat, UIBarMetrics))setBackButtonBackgroundVerticalPositionAdjustment;

- (ZQUIBarButtonItemChainTool *(^)(UIOffset, UIBarMetrics))setTitlePositionAdjustment;
- (ZQUIBarButtonItemChainTool *(^)(UIOffset, UIBarMetrics))setBackButtonTitlePositionAdjustment;

@end



@interface ZQUITabBarItemChainTool : ZQBaseBarItemChainTool<ZQUITabBarItemChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_ITEM_INTERFACE(ZQUITabBarItemChainTool, UIImage *, selectedImage);
ZQ_CHAIN_TOOL_ITEM_INTERFACE(ZQUITabBarItemChainTool, NSString *, badgeValue);
ZQ_CHAIN_TOOL_ITEM_INTERFACE(ZQUITabBarItemChainTool, UIColor *, badgeColor, API_AVAILABLE(ios(10.0)));
ZQ_CHAIN_TOOL_ITEM_INTERFACE(ZQUITabBarItemChainTool, UITabBarAppearance *, standardAppearance, API_AVAILABLE(ios(13.0)));

ZQ_CHAIN_TOOL_ITEM_INTERFACE(ZQUITabBarItemChainTool, UIOffset, titlePositionAdjustment);

#pragma mark - Chain Method

- (ZQUITabBarItemChainTool *(^)(NSDictionary<NSAttributedStringKey,id> *,UIControlState))setBadgeTextAttributes API_AVAILABLE(ios(10.0));

@end
