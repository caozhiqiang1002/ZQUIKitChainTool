//
//  ZQBaseScrollViewChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQBaseScrollViewChain<V: UIScrollView, T>: ZQBaseViewChain<V, T> {
    
}

// MARK: Chain Property
public extension ZQBaseScrollViewChain {
    
    @discardableResult
    func delegate(_ delegate: UIScrollViewDelegate?) -> T {
        self.view.delegate = delegate; return self as! T
    }
    
    @discardableResult
    @available(iOS 10.0, *)
    func refreshControl(_ refreshControl: UIRefreshControl?) -> T {
        self.view.refreshControl = refreshControl; return self as! T
    }
    
    @discardableResult
    func contentOffset(_ contentOffset: CGPoint) -> T {
        self.view.contentOffset = contentOffset; return self as! T
    }
    
    @discardableResult
    func contentSize(_ contentSize: CGSize) -> T {
        self.view.contentSize = contentSize; return self as! T
    }
    
    @discardableResult
    func minimumZoomScale(_ minimumZoomScale: CGFloat) -> T {
        self.view.minimumZoomScale = minimumZoomScale; return self as! T
    }
    
    @discardableResult
    func maximumZoomScale(_ maximumZoomScale: CGFloat) -> T {
        self.view.maximumZoomScale = maximumZoomScale; return self as! T
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior) -> T {
        self.view.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior; return self as! T
    }
    
    @discardableResult
    func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> T {
        self.view.indicatorStyle = indicatorStyle; return self as! T
    }
    
    @discardableResult
    func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> T {
        self.view.keyboardDismissMode = keyboardDismissMode; return self as! T
    }
    
    @discardableResult
    func contentInset(_ contentInset: UIEdgeInsets) -> T {
        self.view.contentInset = contentInset; return self as! T
    }
    
    @discardableResult
    func scrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets) -> T {
        self.view.scrollIndicatorInsets = scrollIndicatorInsets; return self as! T
    }
    
    @discardableResult
    func directionalLockEnabled(_ directionalLockEnabled: Bool) -> T {
        self.view.isDirectionalLockEnabled = directionalLockEnabled; return self as! T
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func automaticallyAdjustsScrollIndicatorInsets(_ automaticallyAdjustsScrollIndicatorInsets: Bool) -> T {
        self.view.automaticallyAdjustsScrollIndicatorInsets = automaticallyAdjustsScrollIndicatorInsets; return self as! T
    }
    
    @discardableResult
    func bounces(_ bounces: Bool) -> T {
        self.view.bounces = bounces; return self as! T
    }
    
    @discardableResult
    func bouncesZoom(_ bouncesZoom: Bool) -> T {
        self.view.bouncesZoom = bouncesZoom; return self as! T
    }
    
    @discardableResult
    func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> T {
        self.view.alwaysBounceVertical = alwaysBounceVertical; return self as! T
    }
    
    @discardableResult
    func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> T {
        self.view.alwaysBounceHorizontal = alwaysBounceHorizontal; return self as! T
    }
    
    @discardableResult
    func pagingEnabled(_ pagingEnabled: Bool) -> T {
        self.view.isPagingEnabled = pagingEnabled; return self as! T
    }
    
    @discardableResult
    func scrollEnabled(_ scrollEnabled: Bool) -> T {
        self.view.isScrollEnabled = scrollEnabled; return self as! T
    }
    
    @discardableResult
    func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> T {
        self.view.showsVerticalScrollIndicator = showsVerticalScrollIndicator; return self as! T
    }
    
    @discardableResult
    func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> T {
        self.view.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator; return self as! T
    }
    
    @discardableResult
    func delaysContentTouches(_ delaysContentTouches: Bool) -> T {
        self.view.delaysContentTouches = delaysContentTouches; return self as! T
    }
    
    @discardableResult
    func canCancelContentTouches(_ canCancelContentTouches: Bool) -> T {
        self.view.canCancelContentTouches = canCancelContentTouches; return self as! T
    }
    
    @discardableResult
    func scrollsToTop(_ scrollsToTop: Bool) -> T {
        self.view.scrollsToTop = scrollsToTop; return self as! T
    }
}

// MARK: Chain Method
public extension ZQBaseScrollViewChain {
    
    @discardableResult
    func setContentOffset(_ contentOffset: CGPoint, animated: Bool) -> T {
        self.view.setContentOffset(contentOffset, animated: animated); return self as! T
    }
    
    @discardableResult
    func scrollRectTVisible(_ rect: CGRect, animated: Bool) -> T {
        self.view.scrollRectToVisible(rect, animated: animated); return self as! T
    }
    
    @discardableResult
    func setZoomScale(_ zoomScale: CGFloat, animated: Bool) -> T {
        self.view.setZoomScale(zoomScale, animated: animated); return self as! T
    }
    
    @discardableResult
    func zoomToRect(to rect: CGRect, animated: Bool) -> T {
        self.view.zoom(to: rect, animated: animated); return self as! T
    }
}


// MARK: UIScrollView
public class ZQUIScrollViewChain: ZQBaseScrollViewChain<UIScrollView, ZQUIScrollViewChain> {
    
}
