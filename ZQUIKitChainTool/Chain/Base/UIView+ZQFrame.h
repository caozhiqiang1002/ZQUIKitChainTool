//
//  UIView+ZQFrame.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/18.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZQFrame)

@property (nonatomic, assign) CGFloat minX;
@property (nonatomic, assign) CGFloat minY;

@property (nonatomic, assign, readonly) CGFloat maxX;
@property (nonatomic, assign, readonly) CGFloat maxY;

@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;

@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@end

