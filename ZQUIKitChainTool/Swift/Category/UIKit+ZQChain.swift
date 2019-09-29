//
//  UIView+ZQChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit
import WebKit

// MARK: UIView
public extension UIView {
    
    var viewTool: ZQUIViewChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIViewChain(view: self)
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIViewChain
    }
    
    var labelTool: ZQUILabelChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUILabelChain(view: (self as! UILabel))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUILabelChain
    }
    
    var imageViewTool: ZQUIImageViewChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIImageViewChain(view: (self as! UIImageView))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIImageViewChain
    }
    
    var scrollViewTool: ZQUIScrollViewChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIScrollViewChain(view: (self as! UIScrollView))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIScrollViewChain
    }
    
    var tableViewTool: ZQUITableViewChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUITableViewChain(view: (self as! UITableView))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUITableViewChain
    }
    
    var textViewTool: ZQUITextViewChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUITextViewChain(view: (self as! UITextView))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUITextViewChain
    }
    
    var textFieldTool: ZQUITextFieldChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUITextFieldChain(view: (self as! UITextField))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUITextFieldChain
    }
    
    var pickerViewTool: ZQUIPickerViewChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIPickerViewChain(view: (self as! UIPickerView))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIPickerViewChain
    }
    
    var webViewTool: ZQWKWebViewChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQWKWebViewChain(view: (self as! WKWebView))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQWKWebViewChain
    }
    
    var progressViewTool: ZQUIProgressViewChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIProgressViewChain(view: (self as! UIProgressView))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIProgressViewChain
    }
    
    var activityIndicatorViewTool: ZQUIActivityIndicatorViewChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIActivityIndicatorViewChain(view: (self as! UIActivityIndicatorView))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIActivityIndicatorViewChain
    }
    
    var collectionViewTool: ZQUICollectionViewChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUICollectionViewChain(view: (self as! UICollectionView))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUICollectionViewChain
    }
}

// MARK: UIControl
public extension UIControl {
    
    var controlTool: ZQUIControlChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIControlChain(view: self)
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIControlChain
    }
    
    var buttonTool: ZQUIButtonChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIButtonChain(view: (self as! UIButton))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIButtonChain
    }
    
    var datePickerTool: ZQUIDatePickerChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIDatePickerChain(view: (self as! UIDatePicker))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIDatePickerChain
    }
    
    var segmentedControlTool: ZQUISegmentedControlChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUISegmentedControlChain(view: (self as! UISegmentedControl))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUISegmentedControlChain
    }
    
    var sliderTool: ZQUISliderChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUISliderChain(view: (self as! UISlider))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUISliderChain
    }
    
    var switchTool: ZQUISwitchChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUISwitchChain(view: (self as! UISwitch))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUISwitchChain
    }
    
    var pageControlTool: ZQUIPageControlChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIPageControlChain(view: (self as! UIPageControl))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIPageControlChain
    }
}

// MARK: UIGestureRecognizer
public extension UIGestureRecognizer {
    
    var gestureTool: ZQUIGestureChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIGestureChain(gesture: self)
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIGestureChain
    }
    
    var tapGestureTool: ZQUITapGestureChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUITapGestureChain(gesture: (self as! UITapGestureRecognizer))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUITapGestureChain
    }
    
    var swipeGestureTool: ZQUISwipeGestureChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUISwipeGestureChain(gesture: (self as! UISwipeGestureRecognizer))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUISwipeGestureChain
    }
    
    var screenEdgePanGestureTool: ZQUIScreenEdgePanGestureChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIScreenEdgePanGestureChain(gesture: (self as! UIScreenEdgePanGestureRecognizer))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIScreenEdgePanGestureChain
    }
    
    var rotationGestureTool: ZQUIRotationGestureChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIRotationGestureChain(gesture: (self as! UIRotationGestureRecognizer))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIRotationGestureChain
    }
    
    var panGestureTool: ZQUIPanGestureChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIPanGestureChain(gesture: (self as! UIPanGestureRecognizer))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIPanGestureChain
    }
    
    var longPressGestureTool: ZQUILongPressGestureChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUILongPressGestureChain(gesture: (self as! UILongPressGestureRecognizer))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUILongPressGestureChain
    }
    
    var pinchGestureTool: ZQUIPinchGestureChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIPinchGestureChain(gesture: (self as! UIPinchGestureRecognizer))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIPinchGestureChain
    }
}

// MARK: UIBarItem
public extension UIBarItem {
    
    var barItemTool: ZQUIBarItemChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIBarItemChain(barItem: self)
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIBarItemChain
    }
    
    var barButtonItemTool: ZQUIBarButtonItemChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUIBarButtonItemChain(barItem: (self as! UIBarButtonItem))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUIBarButtonItemChain
    }
    
    var tabBarItemTool: ZQUITabBarItemChain {
        var tool = objc_getAssociatedObject(self, #function)
        if tool == nil {
            tool = ZQUITabBarItemChain(barItem: (self as! UITabBarItem))
            objc_setAssociatedObject(self, #function, tool, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        return tool as! ZQUITabBarItemChain
    }
}
