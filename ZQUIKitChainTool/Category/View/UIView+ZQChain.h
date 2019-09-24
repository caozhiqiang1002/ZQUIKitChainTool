//
//  UIView+ZQChain.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/17.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ZQUIKitChainTool.h"

@interface UIView (ZQChain)

- (ZQUIViewChainTool *)viewTool;
- (ZQUILabelChainTool *)labelTool;
- (ZQUIImageViewChainTool *)imageViewTool;
- (ZQUIScrollViewChainTool *)scrollViewTool;
- (ZQUITableViewChainTool *)tableViewTool;
- (ZQUICollectionViewChainTool *)collectionViewTool;
- (ZQUITextViewChainTool *)textViewTool;
- (ZQUITextFieldChainTool *)textFieldTool;
- (ZQUIPickerViewChainTool *)pickerViewTool;
- (ZQWKWebViewChainTool *)webViewTool;
- (ZQUIProgressViewChainTool *)progressViewTool;
- (ZQUIActivityIndicatorViewChainTool *)activityIndicatorViewTool;


@end
