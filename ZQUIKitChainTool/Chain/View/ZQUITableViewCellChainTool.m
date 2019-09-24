//
//  ZQUITableViewCellChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/24.
//

#import "ZQUITableViewCellChainTool.h"

@implementation ZQUITableViewCellChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, UIView *, backgroundView);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, UIView *, selectedBackgroundView);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, UIView *, multipleSelectionBackgroundView);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, UIView *, accessoryView);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, UIView *, editingAccessoryView);

ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, UITableViewCellSelectionStyle, selectionStyle);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, UITableViewCellAccessoryType, accessoryType);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, UITableViewCellAccessoryType, editingAccessoryType);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, UITableViewCellFocusStyle, focusStyle);

ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, BOOL, selected);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, BOOL, highlighted);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, BOOL, showsReorderControl);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, BOOL, shouldIndentWhileEditing);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, BOOL, editing);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, BOOL, userInteractionEnabledWhileDragging, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, NSInteger, indentationLevel);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, CGFloat, indentationWidth);
ZQ_CHAIN_TOOL_IMPLEMENT(UITableViewCell, ZQUITableViewCellChainTool, UIEdgeInsets, separatorInset);

#pragma mark - Chain Method

- (ZQUITableViewCellChainTool *(^)(void))prepareForReuse {
    return ^ZQUITableViewCellChainTool *(void) {
        UITableViewCell *cell = self.view;
        [cell prepareForReuse];
        return self;
    };
}

- (ZQUITableViewCellChainTool *(^)(BOOL, BOOL))setSelected {
    return ^ZQUITableViewCellChainTool *(BOOL selected, BOOL animated) {
        UITableViewCell *cell = self.view;
        [cell setSelected:selected animated:animated];
        return self;
    };
}

- (ZQUITableViewCellChainTool *(^)(BOOL, BOOL))setHighlighted {
    return ^ZQUITableViewCellChainTool *(BOOL highlighted, BOOL animated) {
        UITableViewCell *cell = self.view;
        [cell setHighlighted:highlighted animated:animated];
        return self;
    };
}

- (ZQUITableViewCellChainTool *(^)(BOOL, BOOL))setEditing {
    return ^ZQUITableViewCellChainTool *(BOOL editing, BOOL animated) {
        UITableViewCell *cell = self.view;
        [cell setEditing:editing animated:animated];
        return self;
    };
}

- (ZQUITableViewCellChainTool *(^)(UITableViewCellStateMask))willTransition {
    return ^ZQUITableViewCellChainTool *(UITableViewCellStateMask state) {
        UITableViewCell *cell = self.view;
        [cell willTransitionToState:state];
        return self;
    };
}

- (ZQUITableViewCellChainTool *(^)(UITableViewCellStateMask))didTransition {
    return ^ZQUITableViewCellChainTool *(UITableViewCellStateMask state) {
        UITableViewCell *cell = self.view;
        [cell didTransitionToState:state];
        return self;
    };
}

- (ZQUITableViewCellChainTool *(^)(UITableViewCellDragState))dragStateDidChange API_AVAILABLE(ios(11.0)) {
    return ^ZQUITableViewCellChainTool *(UITableViewCellDragState dragState) {
        UITableViewCell *cell = self.view;
        [cell dragStateDidChange:dragState];
        return self;
    };
}

@end
