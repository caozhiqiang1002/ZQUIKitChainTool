//
//  ZQTableViewCell.m
//  ZQUIKitChainToolDemo
//
//  Created by caozhiqiang on 2019/9/24.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQTableViewCell.h"
#import <ZQUIKitChainTool/ZQUIKitChainTool.h>

@implementation ZQTableViewCell

@end

@implementation ZQUIViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.addView.viewTool
            .backgroundColor([UIColor redColor])
            .frame(CGRectMake(10, 10, 30, 30));
    }
    return self;
}

@end

@implementation ZQUILabelCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UILabel *label = self.addLabel.labelTool
                        .backgroundColor([UIColor orangeColor])
                        .frame(CGRectMake(10, 10, 100, 30))
                        .text(@"你好")
                        .textColor([UIColor whiteColor])
                        .textAlignment(NSTextAlignmentLeft)
                        .view;
    }
    return self;
}

@end

@implementation ZQTapGestureCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 30, 30)];
        imageView.imageViewTool
            .backgroundColor([UIColor greenColor])
            .userInteractionEnabled(YES)
            .addToSuperView(self)
            .view
            .addTapGesture
            .tapGestureTool
            .addTarget(self, @selector(tap:));
    }
    return self;
}

- (void)tap:(UITapGestureRecognizer *)recognizer {
    NSLog(@"tap");
}

@end

@implementation ZQUIButtonCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.buttonTool
            .frame(CGRectMake(10, 10, 100, 30))
            .backgroundColor([UIColor purpleColor])
            .setTitle(@"随便点", UIControlStateNormal)
            .setTitleColor([UIColor whiteColor], UIControlStateNormal)
            .addTarget(self, @selector(buttonClick:), UIControlEventTouchUpInside);
        [self addSubview:button];
    }
    return self;
}

- (void)buttonClick:(UIButton *)button {
    NSLog(@"buttonClick");
}

@end
