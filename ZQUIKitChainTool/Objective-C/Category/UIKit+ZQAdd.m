//
//  UIKit+ZQAdd.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/29.
//

#import "UIKit+ZQAdd.h"

// 其他视图创建
#define ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(class, method) \
- (class *)method { \
    class *subView = [[class alloc] init]; \
    [self addSubview:subView]; \
    return subView; \
} \

//Gesture
#define ZQ_UIKIT_CATEGORY_GESTURE_ADD_IMPLEMENT(class, method) \
- (class *)method { \
    class *subGesture = [[class alloc] init]; \
    [self addGestureRecognizer:subGesture]; \
    return subGesture; \
} \

// BarItem
#define ZQ_UIKIT_CATEGORY_BAR_ADD_IMPLEMENT(class, method) \
+ (class *)method { \
    return [[class alloc] init]; \
} \

@implementation UIView (ZQAdd)

#pragma mark - View

ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UIView, addView);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UILabel, addLabel);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UIImageView, addImageView);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UIScrollView, addScrollView);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UITableView, addTableView);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UITextView, addTextView);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UITextField, addTextField);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UIPickerView, addPickerView);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(WKWebView, addWebView);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UIProgressView, addProgressView);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UIActivityIndicatorView, addActivityIndicatorView);

- (UICollectionView *)addCollectionView {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    [self addSubview:collectionView];
    return collectionView;
}

#pragma mark - Control

ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UIControl, addControl);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UIButton, addButton);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UIDatePicker, addDatePicker);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UIPageControl, addPageControl);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UISegmentedControl, addSegmentedControl);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UISlider, addSlider);
ZQ_UIKIT_CATEGORY_ADD_IMPLEMENT(UISwitch, addSwitch);

#pragma mark - Gesture

ZQ_UIKIT_CATEGORY_GESTURE_ADD_IMPLEMENT(UIGestureRecognizer, addGesture);
ZQ_UIKIT_CATEGORY_GESTURE_ADD_IMPLEMENT(UITapGestureRecognizer, addTapGesture);
ZQ_UIKIT_CATEGORY_GESTURE_ADD_IMPLEMENT(UISwipeGestureRecognizer, addSwipeGesture);
ZQ_UIKIT_CATEGORY_GESTURE_ADD_IMPLEMENT(UIScreenEdgePanGestureRecognizer, addScreenGesture);
ZQ_UIKIT_CATEGORY_GESTURE_ADD_IMPLEMENT(UIRotationGestureRecognizer, addRotationGesture);
ZQ_UIKIT_CATEGORY_GESTURE_ADD_IMPLEMENT(UIPanGestureRecognizer, addPanGesture);
ZQ_UIKIT_CATEGORY_GESTURE_ADD_IMPLEMENT(UILongPressGestureRecognizer, addLongPressGesture);
ZQ_UIKIT_CATEGORY_GESTURE_ADD_IMPLEMENT(UIPinchGestureRecognizer, addPinchGesture);

@end


@implementation UIBarItem (ZQAdd)

ZQ_UIKIT_CATEGORY_BAR_ADD_IMPLEMENT(UIBarItem, createBarItem);
ZQ_UIKIT_CATEGORY_BAR_ADD_IMPLEMENT(UIBarButtonItem, createBarButtonItem);
ZQ_UIKIT_CATEGORY_BAR_ADD_IMPLEMENT(UITabBarItem, createTabBarItem);

@end
