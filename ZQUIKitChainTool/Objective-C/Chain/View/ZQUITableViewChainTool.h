//
//  ZQUITableViewChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/19.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseScrollChainTool.h"

@class ZQUITableViewChainTool;

@interface ZQUITableViewChainTool : ZQBaseScrollChainTool<ZQUITableViewChainTool *>

#pragma mark - Property Chain

ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, id<UITableViewDataSource>, dataSource);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, id<UITableViewDelegate>, delegate);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, id<UITableViewDragDelegate>, dragDelegate, API_AVAILABLE(ios(11.0)));
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, id<UITableViewDropDelegate>, dropDelegate, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, CGFloat, rowHeight);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, CGFloat, sectionHeaderHeight);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, CGFloat, sectionFooterHeight);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, CGFloat, estimatedSectionHeaderHeight);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, CGFloat, estimatedSectionFooterHeight);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, UIEdgeInsets, separatorInset);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, UITableViewSeparatorInsetReference, separatorInsetReference, API_AVAILABLE(ios(11.0)));
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, UITableViewCellSeparatorStyle, separatorStyle);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, UIView *, backgroundView);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, UIView *, tableHeaderView);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, UIView *, tableFooterView);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, UIColor *, separatorColor);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, UIVisualEffect *, separatorEffect);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, BOOL, editing);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, BOOL, allowsSelection);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, BOOL, allowsSelectionDuringEditing);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, BOOL, allowsMultipleSelection);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, BOOL, allowsMultipleSelectionDuringEditing);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, BOOL, cellLayoutMarginsFollowReadableWidth);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, BOOL, insetsContentViewsToSafeArea, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewChainTool, BOOL, dragInteractionEnabled, API_AVAILABLE(ios(11.0)));

#pragma mark - Method Chain

- (ZQUITableViewChainTool *(^)(NSIndexPath *, UITableViewScrollPosition, BOOL))scrollToRow;

- (ZQUITableViewChainTool *(^)(NSIndexSet *, UITableViewRowAnimation))insertSections;
- (ZQUITableViewChainTool *(^)(NSIndexSet *, UITableViewRowAnimation))deleteSections;
- (ZQUITableViewChainTool *(^)(NSIndexSet *, UITableViewRowAnimation))reloadSections;
- (ZQUITableViewChainTool *(^)(NSInteger, NSInteger))moveSectionToSection;

- (ZQUITableViewChainTool *(^)(NSArray<NSIndexPath *> *, UITableViewRowAnimation))insertRows;
- (ZQUITableViewChainTool *(^)(NSArray<NSIndexPath *> *, UITableViewRowAnimation))deleteRows;
- (ZQUITableViewChainTool *(^)(NSArray<NSIndexPath *> *, UITableViewRowAnimation))reloadRows;
- (ZQUITableViewChainTool *(^)(NSIndexPath *, NSIndexPath *))moveRowToRow;

- (ZQUITableViewChainTool *(^)(void))reloadData;

- (ZQUITableViewChainTool *(^)(BOOL, BOOL))setEditing;

- (ZQUITableViewChainTool *(^)(NSIndexPath *, BOOL, UITableViewScrollPosition))selectRow;
- (ZQUITableViewChainTool *(^)(NSIndexPath *, BOOL))deselectRow;

- (ZQUITableViewChainTool *(^)(Class, NSString *))registerClassForCell;
- (ZQUITableViewChainTool *(^)(Class, NSString *))registerClassForHeaderFooterView;

- (ZQUITableViewChainTool *(^)(UINib *, NSString *))registerNibForCell;
- (ZQUITableViewChainTool *(^)(UINib *, NSString *))registerNibForHeaderFooterView;

@end
