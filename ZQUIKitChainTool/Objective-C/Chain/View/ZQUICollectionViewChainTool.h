//
//  ZQUICollectionViewChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/20.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseScrollChainTool.h"

@class ZQUICollectionViewChainTool;

@interface ZQUICollectionViewChainTool : ZQBaseScrollChainTool<ZQUICollectionViewChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewChainTool, UICollectionViewLayout *, collectionViewLayout);

ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewChainTool, id<UICollectionViewDelegate>, delegate);
ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewChainTool, id<UICollectionViewDataSource>, dataSource);
ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewChainTool, id<UICollectionViewDataSourcePrefetching>, prefetchDataSource, API_AVAILABLE(ios(10.0)));
ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewChainTool, id<UICollectionViewDragDelegate>, dragDelegate, API_AVAILABLE(ios(11.0)));
ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewChainTool, id<UICollectionViewDropDelegate>, dropDelegate, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewChainTool, BOOL, prefetchingEnabled, API_AVAILABLE(ios(10.0)));
ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewChainTool, BOOL, dragInteractionEnabled, API_AVAILABLE(ios(11.0)));
ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewChainTool, BOOL, allowsSelection);
ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewChainTool, BOOL, allowsMultipleSelection);

ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewChainTool, UICollectionViewReorderingCadence, reorderingCadence, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_INTERFACE(ZQUICollectionViewChainTool, UIView *, backgroundView);

#pragma mark - Chain Method

- (ZQUICollectionViewChainTool *(^)(Class, NSString *))registerClassForCell;
- (ZQUICollectionViewChainTool *(^)(Class, NSString *, NSString *))registerClassForSupplementaryView;

- (ZQUICollectionViewChainTool *(^)(UINib *, NSString *))registerNibForCell;
- (ZQUICollectionViewChainTool *(^)(UINib *, NSString *, NSString *))registerNibForSupplementaryView;

- (ZQUICollectionViewChainTool *(^)(NSIndexPath *, BOOL, UICollectionViewScrollPosition))selectItem;
- (ZQUICollectionViewChainTool *(^)(NSIndexPath *, BOOL))deselectItem;

- (ZQUICollectionViewChainTool *(^)(void))reloadData;

- (ZQUICollectionViewChainTool *(^)(UICollectionViewLayout *, BOOL))setCollectionViewLayout;
- (ZQUICollectionViewChainTool *(^)(UICollectionViewLayout *, BOOL, void(^)(BOOL)))setCollectionViewLayoutBlock;

- (ZQUICollectionViewChainTool *(^)(NSIndexPath *, UICollectionViewScrollPosition, BOOL))scrollToItem;

- (ZQUICollectionViewChainTool *(^)(NSIndexSet *))insertSections;
- (ZQUICollectionViewChainTool *(^)(NSIndexSet *))deleteSections;
- (ZQUICollectionViewChainTool *(^)(NSIndexSet *))reloadSections;
- (ZQUICollectionViewChainTool *(^)(NSInteger, NSInteger))moveSectionToSection;

- (ZQUICollectionViewChainTool *(^)(NSArray<NSIndexPath *> *))insertItems;
- (ZQUICollectionViewChainTool *(^)(NSArray<NSIndexPath *> *))deleteItems;
- (ZQUICollectionViewChainTool *(^)(NSArray<NSIndexPath *> *))reloadItems;
- (ZQUICollectionViewChainTool *(^)(NSIndexPath *, NSIndexPath *))moveItemToItem;

- (ZQUICollectionViewChainTool *(^)(NSIndexPath *))beginInteractiveMovement;
- (ZQUICollectionViewChainTool *(^)(CGPoint))updateInteractiveMovement;
- (ZQUICollectionViewChainTool *(^)(void))endInteractiveMovement;
- (ZQUICollectionViewChainTool *(^)(void))cancelInteractiveMovement;

@end
