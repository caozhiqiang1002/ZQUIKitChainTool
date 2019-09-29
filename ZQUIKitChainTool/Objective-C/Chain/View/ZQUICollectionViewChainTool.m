//
//  ZQUICollectionViewChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/20.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUICollectionViewChainTool.h"

@implementation ZQUICollectionViewChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionView, ZQUICollectionViewChainTool, UICollectionViewLayout *, collectionViewLayout);

ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionView, ZQUICollectionViewChainTool, id<UICollectionViewDelegate>, delegate);
ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionView, ZQUICollectionViewChainTool, id<UICollectionViewDataSource>, dataSource);
ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionView, ZQUICollectionViewChainTool, id<UICollectionViewDataSourcePrefetching>, prefetchDataSource, API_AVAILABLE(ios(10.0)));
ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionView, ZQUICollectionViewChainTool, id<UICollectionViewDragDelegate>, dragDelegate, API_AVAILABLE(ios(11.0)));
ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionView, ZQUICollectionViewChainTool, id<UICollectionViewDropDelegate>, dropDelegate, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionView, ZQUICollectionViewChainTool, BOOL, prefetchingEnabled, API_AVAILABLE(ios(10.0)));
ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionView, ZQUICollectionViewChainTool, BOOL, dragInteractionEnabled, API_AVAILABLE(ios(11.0)));
ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionView, ZQUICollectionViewChainTool, BOOL, allowsSelection);
ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionView, ZQUICollectionViewChainTool, BOOL, allowsMultipleSelection);

ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionView, ZQUICollectionViewChainTool, UICollectionViewReorderingCadence, reorderingCadence, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_IMPLEMENT(UICollectionView, ZQUICollectionViewChainTool, UIView *, backgroundView);

#pragma mark - Chain Method

- (ZQUICollectionViewChainTool *(^)(Class, NSString *))registerClassForCell {
    return ^ZQUICollectionViewChainTool *(Class cellClass, NSString *identifier) {
        UICollectionView *collectionView = self.view;
        [collectionView registerClass:cellClass forCellWithReuseIdentifier:identifier];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(Class, NSString *, NSString *))registerClassForSupplementaryView {
    return ^ZQUICollectionViewChainTool *(Class viewClass, NSString *kind, NSString *identifier) {
        UICollectionView *collectionView = self.view;
        [collectionView registerClass:viewClass forSupplementaryViewOfKind:kind withReuseIdentifier:identifier];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(UINib *, NSString *))registerNibForCell {
    return ^ZQUICollectionViewChainTool *(UINib *nib, NSString *identifier) {
        UICollectionView *collectionView = self.view;
        [collectionView registerNib:nib forCellWithReuseIdentifier:identifier];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(UINib *, NSString *, NSString *))registerNibForSupplementaryView {
    return ^ZQUICollectionViewChainTool *(UINib *nib, NSString *kind, NSString *identifier) {
        UICollectionView *collectionView = self.view;
        [collectionView registerNib:nib forSupplementaryViewOfKind:kind withReuseIdentifier:identifier];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(NSIndexPath *, BOOL, UICollectionViewScrollPosition))selectItem {
    return ^ZQUICollectionViewChainTool *(NSIndexPath *indexPath, BOOL animated, UICollectionViewScrollPosition scrollPosition) {
        UICollectionView *collectionView = self.view;
        [collectionView selectItemAtIndexPath:indexPath animated:animated scrollPosition:scrollPosition];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(NSIndexPath *, BOOL))deselectItem {
    return ^ZQUICollectionViewChainTool *(NSIndexPath *indexPath, BOOL animated) {
        UICollectionView *collectionView = self.view;
        [collectionView deselectItemAtIndexPath:indexPath animated:animated];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(void))reloadData {
    return ^ZQUICollectionViewChainTool *(void) {
        UICollectionView *collectionView = self.view;
        [collectionView reloadData];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(UICollectionViewLayout *, BOOL))setCollectionViewLayout {
    return ^ZQUICollectionViewChainTool *(UICollectionViewLayout *layout, BOOL animated) {
        UICollectionView *collectionView = self.view;
        [collectionView setCollectionViewLayout:layout animated:animated];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(UICollectionViewLayout *, BOOL, void(^)(BOOL)))setCollectionViewLayoutBlock {
    return ^ZQUICollectionViewChainTool *(UICollectionViewLayout *layout, BOOL animated, void(^block)(BOOL)) {
        UICollectionView *collectionView = self.view;
        [collectionView setCollectionViewLayout:layout animated:animated completion:block];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(NSIndexPath *, UICollectionViewScrollPosition, BOOL))scrollToItem {
    
    return ^ZQUICollectionViewChainTool *(NSIndexPath *indexPath, UICollectionViewScrollPosition scrollPosition, BOOL animated) {
        UICollectionView *collectionView = self.view;
        [collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:scrollPosition animated:animated];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(NSIndexSet *))insertSections {
    return ^ZQUICollectionViewChainTool *(NSIndexSet *sections) {
        UICollectionView *collectionView = self.view;
        [collectionView insertSections:sections];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(NSIndexSet *))deleteSections {
    return ^ZQUICollectionViewChainTool *(NSIndexSet *sections) {
        UICollectionView *collectionView = self.view;
        [collectionView deleteSections:sections];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(NSIndexSet *))reloadSections {
    return ^ZQUICollectionViewChainTool *(NSIndexSet *sections) {
        UICollectionView *collectionView = self.view;
        [collectionView reloadSections:sections];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(NSInteger, NSInteger))moveSectionToSection {
    return ^ZQUICollectionViewChainTool *(NSInteger section, NSInteger newSection) {
        UICollectionView *collectionView = self.view;
        [collectionView moveSection:section toSection:newSection];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(NSArray<NSIndexPath *> *))insertItems {
    return ^ZQUICollectionViewChainTool *(NSArray<NSIndexPath *> *indexPaths) {
        UICollectionView *collectionView = self.view;
        [collectionView insertItemsAtIndexPaths:indexPaths];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(NSArray<NSIndexPath *> *))deleteItems {
    return ^ZQUICollectionViewChainTool *(NSArray<NSIndexPath *> *indexPaths) {
        UICollectionView *collectionView = self.view;
        [collectionView deleteItemsAtIndexPaths:indexPaths];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(NSArray<NSIndexPath *> *))reloadItems {
    return ^ZQUICollectionViewChainTool *(NSArray<NSIndexPath *> *indexPaths) {
        UICollectionView *collectionView = self.view;
        [collectionView reloadItemsAtIndexPaths:indexPaths];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(NSIndexPath *, NSIndexPath *))moveItemToItem {
    return ^ZQUICollectionViewChainTool *(NSIndexPath *indexPath, NSIndexPath *newIndexPath) {
        UICollectionView *collectionView = self.view;
        [collectionView moveItemAtIndexPath:indexPath toIndexPath:newIndexPath];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(NSIndexPath *))beginInteractiveMovement {
    return ^ZQUICollectionViewChainTool *(NSIndexPath *indexPath) {
        UICollectionView *collectionView = self.view;
        [collectionView beginInteractiveMovementForItemAtIndexPath:indexPath];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(CGPoint))updateInteractiveMovement {
    return ^ZQUICollectionViewChainTool *(CGPoint targetPosition) {
        UICollectionView *collectionView = self.view;
        [collectionView updateInteractiveMovementTargetPosition:targetPosition];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(void))endInteractiveMovement {
    return ^ZQUICollectionViewChainTool *(void) {
        UICollectionView *collectionView = self.view;
        [collectionView endInteractiveMovement];
        return self;
    };
}

- (ZQUICollectionViewChainTool *(^)(void))cancelInteractiveMovement {
    return ^ZQUICollectionViewChainTool *(void) {
        UICollectionView *collectionView = self.view;
        [collectionView cancelInteractiveMovement];
        return self;
    };
}

@end
