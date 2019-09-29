//
//  UIKit+ZQChain.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/29.
//

#import <UIKit/UIKit.h>

#import "ZQUIKitChainDefine.h"


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
- (ZQUICollectionReusableViewChainTool *)reusableViewTool;
- (ZQUICollectionViewCellChainTool *)collectionCellTool;
- (ZQUITableViewCellChainTool *)tableCellTool;

@end


@interface UIControl (ZQChain)

- (ZQUIControlChainTool *)controlTool;
- (ZQUIButtonChainTool *)buttonTool;
- (ZQUIDatePickerChainTool *)datePickerTool;
- (ZQUIPageControlChainTool *)pageControlTool;
- (ZQUISegmentedControlChainTool *)segmentedControlTool;
- (ZQUISliderChainTool *)sliderTool;
- (ZQUISwitchChainTool *)switchTool;

@end


@interface UIGestureRecognizer (ZQChain)

- (ZQUIGestureChainTool *)gestureTool;
- (ZQUITapGestureChainTool *)tapGestureTool;
- (ZQUISwipeGestureChainTool *)swipeGestureTool;
- (ZQUIScreenEdgePanGestureChainTool *)screenGestureTool;
- (ZQUIRotationGestureChainTool *)rotationGestureTool;
- (ZQUIPanGestureChainTool *)panGestureTool;
- (ZQUILongPressGestureChainTool *)longPressGestureTool;
- (ZQUIPinchGestureChainTool *)pinchGestureTool;

@end


@interface UIBarItem (ZQChain)

- (ZQUIBarItemChainTool *)barItemTool;
- (ZQUIBarButtonItemChainTool *)barButtonItemTool;
- (ZQUITabBarItemChainTool *)tabBarItemTool;

@end
