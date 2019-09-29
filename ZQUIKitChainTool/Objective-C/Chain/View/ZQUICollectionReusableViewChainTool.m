//
//  ZQUICollectionReusableViewChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/24.
//

#import "ZQUICollectionReusableViewChainTool.h"

@implementation ZQUICollectionReusableViewChainTool

@end



@implementation ZQUICollectionViewCellChainTool

ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionViewCell, ZQUICollectionViewCellChainTool, BOOL, selected);
ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionViewCell, ZQUICollectionViewCellChainTool, BOOL, highlighted);

ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionViewCell, ZQUICollectionViewCellChainTool, UIView *, backgroundView);
ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionViewCell, ZQUICollectionViewCellChainTool, UIView *, selectedBackgroundView);

- (ZQUICollectionViewCellChainTool *(^)(UICollectionViewCellDragState))dragStateDidChange API_AVAILABLE(ios(11.0)) {
    return ^ZQUICollectionViewCellChainTool *(UICollectionViewCellDragState dragState) {
        UICollectionViewCell *cell = self.view;
        [cell dragStateDidChange:dragState];
        return self;
    };
}

@end
