//
//  UIBarItem+ZQChain.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZQUIKitChainDefine.h"

@interface UIBarItem (ZQChain)

#pragma mark - 获取UI

+ (UIBarItem *)createBarItem;
+ (UIBarButtonItem *)createBarButtonItem;
+ (UITabBarItem *)createTabBarItem;


#pragma mark - 获取Tool

- (ZQUIBarItemChainTool *)barItemTool;
- (ZQUIBarButtonItemChainTool *)barButtonItemTool;
- (ZQUITabBarItemChainTool *)tabBarItemTool;

@end
