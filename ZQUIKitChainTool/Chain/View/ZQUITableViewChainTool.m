//
//  ZQUITableViewChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/19.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQUITableViewChainTool.h"

@implementation ZQUITableViewChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, id<UITableViewDataSource>, dataSource);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, id<UITableViewDelegate>, delegate);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, id<UITableViewDragDelegate>, dragDelegate, API_AVAILABLE(ios(11.0)));
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, id<UITableViewDropDelegate>, dropDelegate, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, CGFloat, rowHeight);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, CGFloat, sectionHeaderHeight);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, CGFloat, sectionFooterHeight);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, CGFloat, estimatedSectionHeaderHeight);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, CGFloat, estimatedSectionFooterHeight);

ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, UIEdgeInsets, separatorInset);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, UITableViewSeparatorInsetReference, separatorInsetReference, API_AVAILABLE(ios(11.0)));
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, UITableViewCellSeparatorStyle, separatorStyle);

ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, UIView *, backgroundView);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, UIView *, tableHeaderView);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, UIView *, tableFooterView);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, UIColor *, separatorColor);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, UIVisualEffect *, separatorEffect);

ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, BOOL, editing);

ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, BOOL, allowsSelection);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, BOOL, allowsSelectionDuringEditing);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, BOOL, allowsMultipleSelection);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, BOOL, allowsMultipleSelectionDuringEditing);

ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, BOOL, cellLayoutMarginsFollowReadableWidth);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, BOOL, insetsContentViewsToSafeArea, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_IMPLEMENT(UITableView, ZQUITableViewChainTool, BOOL, dragInteractionEnabled, API_AVAILABLE(ios(11.0)));

#pragma mark - Chain Method

- (ZQUITableViewChainTool *(^)(NSIndexPath *, UITableViewScrollPosition, BOOL))scrollToRow {
    return ^ZQUITableViewChainTool *(NSIndexPath *indexPath, UITableViewScrollPosition scrollPosition, BOOL animated) {
        UITableView *tableView = self.view;
        [tableView scrollToRowAtIndexPath:indexPath atScrollPosition:scrollPosition animated:animated];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(NSIndexSet *, UITableViewRowAnimation))insertSections {
    return ^ZQUITableViewChainTool *(NSIndexSet *sections, UITableViewRowAnimation animation) {
        UITableView *tableView = self.view;
        [tableView insertSections:sections withRowAnimation:animation];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(NSIndexSet *, UITableViewRowAnimation))deleteSections {
    return ^ZQUITableViewChainTool *(NSIndexSet *sections, UITableViewRowAnimation animation) {
        UITableView *tableView = self.view;
        [tableView deleteSections:sections withRowAnimation:animation];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(NSIndexSet *, UITableViewRowAnimation))reloadSections {
    return ^ZQUITableViewChainTool *(NSIndexSet *sections, UITableViewRowAnimation animation) {
        UITableView *tableView = self.view;
        [tableView reloadSections:sections withRowAnimation:animation];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(NSInteger, NSInteger))moveSectionToSection {
    return ^ZQUITableViewChainTool *(NSInteger section, NSInteger newSection) {
        UITableView *tableView = self.view;
        [tableView moveSection:section toSection:newSection];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(NSArray<NSIndexPath *> *, UITableViewRowAnimation))insertRows {
    return ^ZQUITableViewChainTool *(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation) {
        UITableView *tableView = self.view;
        [tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:animation];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(NSArray<NSIndexPath *> *, UITableViewRowAnimation))deleteRows {
    return ^ZQUITableViewChainTool *(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation) {
        UITableView *tableView = self.view;
        [tableView deleteRowsAtIndexPaths:indexPaths withRowAnimation:animation];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(NSArray<NSIndexPath *> *, UITableViewRowAnimation))reloadRows {
    return ^ZQUITableViewChainTool *(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation) {
        UITableView *tableView = self.view;
        [tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:animation];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(NSIndexPath *, NSIndexPath *))moveRowToRow {
    return ^ZQUITableViewChainTool *(NSIndexPath *indexPath, NSIndexPath *newIndexPath) {
        UITableView *tableView = self.view;
        [tableView moveRowAtIndexPath:indexPath toIndexPath:newIndexPath];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(void))reloadData {
    return ^ZQUITableViewChainTool *(void) {
        UITableView *tableView = self.view;
        [tableView reloadData];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(BOOL, BOOL))setEditing {
    return ^ZQUITableViewChainTool *(BOOL editing, BOOL animated) {
        UITableView *tableView = self.view;
        [tableView setEditing:editing animated:animated];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(NSIndexPath *, BOOL, UITableViewScrollPosition))selectRow {
    return ^ZQUITableViewChainTool *(NSIndexPath *indexPath, BOOL animated, UITableViewScrollPosition scrollPosition) {
        UITableView *tableView = self.view;
        [tableView selectRowAtIndexPath:indexPath animated:animated scrollPosition:scrollPosition];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(NSIndexPath *, BOOL))deselectRow {
    return ^ZQUITableViewChainTool *(NSIndexPath *indexPath, BOOL animated) {
        UITableView *tableView = self.view;
        [tableView deselectRowAtIndexPath:indexPath animated:animated];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(Class, NSString *))registerClassForCell {
    return ^ZQUITableViewChainTool *(Class cellClass, NSString *identifier) {
        UITableView *tableView = self.view;
        [tableView registerClass:cellClass forCellReuseIdentifier:identifier];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(Class, NSString *))registerClassForHeaderFooterView {
    return ^ZQUITableViewChainTool *(Class aClass, NSString *identifier) {
        UITableView *tableView = self.view;
        [tableView registerClass:aClass forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(UINib *, NSString *))registerNibForCell {
    return ^ZQUITableViewChainTool *(UINib *nib, NSString *identifier) {
        UITableView *tableView = self.view;
        [tableView registerNib:nib forCellReuseIdentifier:identifier];
        return self;
    };
}

- (ZQUITableViewChainTool *(^)(UINib *, NSString *))registerNibForHeaderFooterView {
    return ^ZQUITableViewChainTool *(UINib *nib, NSString *identifier) {
        UITableView *tableView = self.view;
        [tableView registerNib:nib forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}

@end
