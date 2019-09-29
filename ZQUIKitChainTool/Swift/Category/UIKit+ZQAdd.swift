//
//  UIView+ZQChainHandler.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/26.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit
import WebKit

// UIView
public extension UIView  {
    
    var addView: UIView {
        let view = UIView(); self.addSubview(view); return view
    }
    
    var addLabel: UILabel {
        let view = UILabel(); self.addSubview(view); return view
    }
    
    var addImageView: UIImageView {
        let view = UIImageView(); self.addSubview(view); return view
    }
    
    var addScrollView: UIScrollView {
        let view = UIScrollView(); self.addSubview(view); return view
    }
    
    var addTableView: UITableView {
        let view = UITableView(); self.addSubview(view); return view
    }
    
    var addTextView: UITextView {
        let view = UITextView(); self.addSubview(view); return view
    }
    
    var addTextField: UITextField {
        let view = UITextField(); self.addSubview(view); return view
    }
    
    var addPickerView: UIPickerView {
        let view = UIPickerView(); self.addSubview(view); return view
    }
    
    var addWebView: WKWebView {
        let view = WKWebView(); self.addSubview(view); return view
    }
    
    var addProgressView: UIProgressView {
        let view = UIProgressView(); self.addSubview(view); return view
    }
    
    var addActivityIndicatorView: UIActivityIndicatorView {
        let view = UIActivityIndicatorView(); self.addSubview(view); return view
    }
    
    var addCollectionView: UICollectionView {
        let layout = UICollectionViewFlowLayout(); let view = UICollectionView(frame: .zero, collectionViewLayout: layout); self.addSubview(view); return view
    }
}



// UIControl
public extension UIView {
    
    var addControl: UIControl {
        let control = UIControl(); self.addSubview(control); return control
    }
    
    var addButton: UIButton {
        let control = UIButton(); self.addSubview(control); return control
    }
    
    var addDatePicker: UIDatePicker {
        let control = UIDatePicker(); self.addSubview(control); return control
    }
    
    var addSegmentedControl: UISegmentedControl {
        let control = UISegmentedControl(); self.addSubview(control); return control
    }
    
    var addSlider: UISlider {
        let control = UISlider(); self.addSubview(control); return control
    }
    
    var addSwitch: UISwitch {
        let control = UISwitch(); self.addSubview(control); return control
    }
    
    var addPageControl: UIPageControl {
        let control = UIPageControl(); self.addSubview(control); return control
    }
}



// Gesture
public extension UIView {
    
    var addGesture: UIGestureRecognizer {
        let gesture = UIGestureRecognizer(); self.addGestureRecognizer(gesture); return gesture
    }
    
    var addTapGesture: UITapGestureRecognizer {
        let gesture = UITapGestureRecognizer(); self.addGestureRecognizer(gesture); return gesture
    }
    
    var addSwipeGesture: UISwipeGestureRecognizer {
        let gesture = UISwipeGestureRecognizer(); self.addGestureRecognizer(gesture); return gesture
    }
    
    var addScreenGesture: UIScreenEdgePanGestureRecognizer {
        let gesture = UIScreenEdgePanGestureRecognizer(); self.addGestureRecognizer(gesture); return gesture
    }
    
    var addRotationGesture: UIRotationGestureRecognizer {
        let gesture = UIRotationGestureRecognizer(); self.addGestureRecognizer(gesture); return gesture
    }
    
    var addPanGesture: UIPanGestureRecognizer {
        let gesture = UIPanGestureRecognizer(); self.addGestureRecognizer(gesture); return gesture
    }
    
    var addLongPressGesture: UILongPressGestureRecognizer {
        let gesture = UILongPressGestureRecognizer(); self.addGestureRecognizer(gesture); return gesture
    }
    
    var addPinchGesture: UIPinchGestureRecognizer {
        let gesture = UIPinchGestureRecognizer(); self.addGestureRecognizer(gesture); return gesture
    }
}

public extension UIBarItem {
    
    static var createBarItem: UIBarItem { return UIBarItem() }
    
    static var createBarButtonItem: UIBarButtonItem { return UIBarButtonItem() }
    
    static var createTabBarItem: UITabBarItem { return UITabBarItem() }
}
