//
//  ZQBaseBarItemChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

// 派生类使用
#define ZQ_CHAIN_TOOL_ITEM_INTERFACE(tool_class, attr_class, attr_name, ...) \
- (tool_class *(^)(attr_class))attr_name __VA_ARGS__ \

#define ZQ_CHAIN_TOOL_ITEM_IMPLEMENT(class, tool_class, attr_class, attr_name, ...) \
- (tool_class *(^)(attr_class))attr_name __VA_ARGS__ { \
    return ^tool_class *(attr_class attr_name) { \
        class *currentItem = self.barItem; \
        currentItem.attr_name = attr_name; \
        return self; \
    }; \
} \

// 基类使用
#define ZQ_CHAIN_TOOL_BASE_ITEM_INTERFACE(attr_class, attr_name, ...) \
- (T(^)(attr_class))attr_name __VA_ARGS__ \


@interface ZQBaseBarItemChainTool<__covariant T> : NSObject

@property (nonatomic, strong, readonly) __kindof UIBarItem *barItem;

- (instancetype)initWithItem:(UIBarItem *)barItem;

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_BASE_ITEM_INTERFACE(BOOL, enabled);

ZQ_CHAIN_TOOL_BASE_ITEM_INTERFACE(NSString *, title);

ZQ_CHAIN_TOOL_BASE_ITEM_INTERFACE(UIImage *, image);
ZQ_CHAIN_TOOL_BASE_ITEM_INTERFACE(UIImage *, landscapeImagePhone);
ZQ_CHAIN_TOOL_BASE_ITEM_INTERFACE(UIImage *, largeContentSizeImage, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_BASE_ITEM_INTERFACE(UIEdgeInsets, imageInsets);
ZQ_CHAIN_TOOL_BASE_ITEM_INTERFACE(UIEdgeInsets, landscapeImagePhoneInsets);
ZQ_CHAIN_TOOL_BASE_ITEM_INTERFACE(UIEdgeInsets, largeContentSizeImageInsets, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_BASE_ITEM_INTERFACE(NSInteger, tag);

#pragma mark - Chain Method

- (T(^)(NSDictionary<NSAttributedStringKey,id> *, UIControlState))setTitleTextAttributes;

@end

