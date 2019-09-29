//
//  ZQBaseReusableChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/24.
//

#import "ZQBaseReusableChainTool.h"

#define ZQ_CHAIN_TOOL_REUSABLE_IMPLEMENT(attr_class, attr_name, ...) \
- (id(^)(attr_class))attr_name __VA_ARGS__ { \
    return ^id(attr_class attr_name) { \
        self.resuableView.attr_name = attr_name; \
        return self; \
    }; \
} \

@implementation ZQBaseReusableChainTool

- (UICollectionReusableView *)reusableView {
    return self.view;
}

#pragma mark - Chain Method

- (id (^)(void))prepareForReuse {
    return ^id(void) {
        [self.reusableView prepareForReuse];
        return self;
    };
}

- (id (^)(UICollectionViewLayoutAttributes *))applyLayoutAttributes {
    return ^id(UICollectionViewLayoutAttributes *layoutAttributes) {
        [self.reusableView applyLayoutAttributes:layoutAttributes];
        return self;
    };
}

- (id (^)(UICollectionViewLayout *, UICollectionViewLayout *))willTransition {
    return ^id(UICollectionViewLayout *oldLayout, UICollectionViewLayout *newLayout) {
        [self.reusableView willTransitionFromLayout:oldLayout toLayout:newLayout];
        return self;
    };
}

- (id (^)(UICollectionViewLayout *, UICollectionViewLayout *))didTransition {
    return ^id(UICollectionViewLayout *oldLayout, UICollectionViewLayout *newLayout) {
        [self.reusableView didTransitionFromLayout:oldLayout toLayout:newLayout];
        return self;
    };
}

@end
