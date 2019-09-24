//
//  ZQUICollectionReusableViewChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/24.
//

#import "ZQBaseReusableChainTool.h"

@class ZQUICollectionReusableViewChainTool;
@class ZQUICollectionViewCellChainTool;


@interface ZQUICollectionReusableViewChainTool : ZQBaseReusableChainTool<ZQUICollectionReusableViewChainTool *>

@end


@interface ZQUICollectionViewCellChainTool : ZQBaseReusableChainTool<ZQUICollectionViewCellChainTool *>

ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewCellChainTool, BOOL, selected);
ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewCellChainTool, BOOL, highlighted);

ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewCellChainTool, UIView *, backgroundView);
ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewCellChainTool, UIView *, selectedBackgroundView);

- (ZQUICollectionViewCellChainTool *(^)(UICollectionViewCellDragState))dragStateDidChange API_AVAILABLE(ios(11.0));

@end
