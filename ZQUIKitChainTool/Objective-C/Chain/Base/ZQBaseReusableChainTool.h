//
//  ZQBaseReusableChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/24.
//

#import "ZQBaseViewChainTool.h"

#define ZQ_CHAIN_TOOL_REUSABLE_INTERFACE(attr_class, attr_name, ...) \
- (T(^)(attr_class))attr_name __VA_ARGS__ \

@interface ZQBaseReusableChainTool<__covariant T> : ZQBaseViewChainTool<T>

#pragma mark - Chain Method

- (T(^)(void))prepareForReuse;

- (T(^)(UICollectionViewLayoutAttributes *))applyLayoutAttributes;

- (T(^)(UICollectionViewLayout *, UICollectionViewLayout *))willTransition;
- (T(^)(UICollectionViewLayout *, UICollectionViewLayout *))didTransition;

@end
