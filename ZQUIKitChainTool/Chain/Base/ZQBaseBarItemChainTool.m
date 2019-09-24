//
//  ZQBaseBarItemChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseBarItemChainTool.h"

#define ZQ_CHAIN_TOOL_BASE_ITEM_IMPLEMENT(attr_class, attr_name, ...) \
- (id(^)(attr_class))attr_name __VA_ARGS__ { \
    return ^id(attr_class attr_name) { \
        self.barItem.attr_name = attr_name; \
        return self; \
    }; \
} \

@interface ZQBaseBarItemChainTool()
@property (nonatomic, strong) UIBarItem *barItem;
@end

@implementation ZQBaseBarItemChainTool

- (instancetype)initWithItem:(UIBarItem *)barItem {
    if (self = [super init]) {
        self.barItem = barItem;
    }
    return self;
}

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_BASE_ITEM_IMPLEMENT(BOOL, enabled);

ZQ_CHAIN_TOOL_BASE_ITEM_IMPLEMENT(NSString *, title);

ZQ_CHAIN_TOOL_BASE_ITEM_IMPLEMENT(UIImage *, image);
ZQ_CHAIN_TOOL_BASE_ITEM_IMPLEMENT(UIImage *, landscapeImagePhone);
ZQ_CHAIN_TOOL_BASE_ITEM_IMPLEMENT(UIImage *, largeContentSizeImage, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_BASE_ITEM_IMPLEMENT(UIEdgeInsets, imageInsets);
ZQ_CHAIN_TOOL_BASE_ITEM_IMPLEMENT(UIEdgeInsets, landscapeImagePhoneInsets);
ZQ_CHAIN_TOOL_BASE_ITEM_IMPLEMENT(UIEdgeInsets, largeContentSizeImageInsets, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_BASE_ITEM_IMPLEMENT(NSInteger, tag);

#pragma mark - Chain Method

- (id(^)(NSDictionary<NSAttributedStringKey,id> *, UIControlState))setTitleTextAttributes {
    return ^id(NSDictionary<NSAttributedStringKey,id> *attributes, UIControlState state) {
        [self.barItem setTitleTextAttributes:attributes forState:state];
        return self;
    };
}

@end
