//
//  UIView+ZQChainHandler.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface UIView (ZQChainHandler)

#pragma mark - UIView

- (UIView *)addView;
- (UILabel *)addLabel;
- (UIImageView *)addImageView;
- (UIScrollView *)addScrollView;
- (UITableView *)addTableView;
- (UICollectionView *)addCollectionView;
- (UITextView *)addTextView;
- (UITextField *)addTextField;
- (UIPickerView *)addPickerView;
- (WKWebView *)addWebView;
- (UIProgressView *)addProgressView;
- (UIActivityIndicatorView *)addActivityIndicatorView;

#pragma mark - UIControl

- (UIControl *)addControl;
- (UIButton *)addButton;
- (UIDatePicker *)addDatePicker;
- (UIPageControl *)addPageControl;
- (UISegmentedControl *)addSegmentedControl;
- (UISlider *)addSlider;
- (UISwitch *)addSwitch;

#pragma mark - Gesture

- (UIGestureRecognizer *)addGesture;
- (UITapGestureRecognizer *)addTapGesture;
- (UISwipeGestureRecognizer *)addSwipeGesture;
- (UIScreenEdgePanGestureRecognizer *)addScreenGesture;
- (UIRotationGestureRecognizer *)addRotationGesture;
- (UIPanGestureRecognizer *)addPanGesture;
- (UILongPressGestureRecognizer *)addLongPressGesture;
- (UIPinchGestureRecognizer *)addPinchGesture;

@end
