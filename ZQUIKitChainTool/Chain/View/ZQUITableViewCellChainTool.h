//
//  ZQUITableViewCellChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/24.
//

#import "ZQBaseViewChainTool.h"

@class ZQUITableViewCellChainTool;

@interface ZQUITableViewCellChainTool : ZQBaseViewChainTool<ZQUITableViewCellChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, UIView *, backgroundView);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, UIView *, selectedBackgroundView);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, UIView *, multipleSelectionBackgroundView);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, UIView *, accessoryView);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, UIView *, editingAccessoryView);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, UITableViewCellSelectionStyle, selectionStyle);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, UITableViewCellAccessoryType, accessoryType);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, UITableViewCellAccessoryType, editingAccessoryType);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, UITableViewCellFocusStyle, focusStyle);

ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, BOOL, selected);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, BOOL, highlighted);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, BOOL, showsReorderControl);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, BOOL, shouldIndentWhileEditing);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, BOOL, editing);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, BOOL, userInteractionEnabledWhileDragging, API_AVAILABLE(ios(11.0)));

ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, NSInteger, indentationLevel);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, CGFloat, indentationWidth);
ZQ_CHAIN_TOOL_INTERFACE(ZQUITableViewCellChainTool, UIEdgeInsets, separatorInset);


#pragma mark - Chain Method

- (ZQUITableViewCellChainTool *(^)(void))prepareForReuse;

- (ZQUITableViewCellChainTool *(^)(BOOL, BOOL))setSelected;
- (ZQUITableViewCellChainTool *(^)(BOOL, BOOL))setHighlighted;
- (ZQUITableViewCellChainTool *(^)(BOOL, BOOL))setEditing;

- (ZQUITableViewCellChainTool *(^)(UITableViewCellStateMask))willTransition;
- (ZQUITableViewCellChainTool *(^)(UITableViewCellStateMask))didTransition;

- (ZQUITableViewCellChainTool *(^)(UITableViewCellDragState))dragStateDidChange API_AVAILABLE(ios(11.0));

@end
