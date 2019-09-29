//
//  ZQBaseViewChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQBaseViewChain<V: UIView, T>: NSObject{
    
    public var view: V
    
    init(view: V) { self.view = view }
}

// MARK: Chain Property
public extension ZQBaseViewChain {
    
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor?) -> T {
        self.view.backgroundColor = backgroundColor; return self as! T
    }

    @discardableResult
    func tintColor(_ tintColor: UIColor?) -> T {
        self.view.tintColor = tintColor; return self as! T
    }
    
    @discardableResult
    func maskView(_ maskView: UIView?) -> T {
        self.view.mask = maskView; return self as! T
    }
    
    @discardableResult
    func alpha(_ alpha: CGFloat) -> T {
        self.view.alpha = alpha; return self as! T
    }
    
    @discardableResult
    func tag(_ tag: Int) -> T {
        self.view.tag = tag; return self as! T
    }
    
    @discardableResult
    func transform(_ transform: CGAffineTransform) -> T {
        self.view.transform = transform; return self as! T
    }
    
    @discardableResult
    @available(iOS 12.0, *)
    func transform3D(_ transform3D: CATransform3D) -> T {
        self.view.transform3D = transform3D; return self as! T
    }
    
    @discardableResult
    func autoresizingMask(_ autoresizingMask: UIView.AutoresizingMask) -> T {
        self.view.autoresizingMask = autoresizingMask; return self as! T
    }
    
    @discardableResult
    func contentMode(_ contentMode: UIView.ContentMode) -> T {
        self.view.contentMode = contentMode; return self as! T
    }
    
    @discardableResult
    func tintAdjustmentMode(_ tintAdjustmentMode: UIView.TintAdjustmentMode) -> T {
        self.view.tintAdjustmentMode = tintAdjustmentMode; return self as! T
    }
    
    @discardableResult
    func layoutMargins(_ layoutMargins: UIEdgeInsets) -> T {
        self.view.layoutMargins = layoutMargins; return self as! T
    }
    
    @discardableResult
    func userInteractionEnabled(_ userInteractionEnabled: Bool) -> T {
        self.view.isUserInteractionEnabled = userInteractionEnabled; return self as! T
    }
    
    @discardableResult
    func preservesSuperviewLayoutMargins(_ preservesSuperviewLayoutMargins: Bool) -> T {
        self.view.preservesSuperviewLayoutMargins = preservesSuperviewLayoutMargins; return self as! T
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func insetsLayoutMarginsFromSafeArea(_ insetsLayoutMarginsFromSafeArea: Bool) -> T {
        self.view.insetsLayoutMarginsFromSafeArea = insetsLayoutMarginsFromSafeArea; return self as! T
    }
    
    @discardableResult
    func opaque(_ opaque: Bool) -> T {
        self.view.isOpaque = opaque; return self as! T
    }
    
    @discardableResult
    func clipsToBounds(_ clipsToBounds: Bool) -> T {
        self.view.clipsToBounds = clipsToBounds; return self as! T
    }
    
    @discardableResult
    func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool) -> T {
        self.view.clearsContextBeforeDrawing = clearsContextBeforeDrawing; return self as! T
    }
    
    @discardableResult
    func hidden(_ hidden: Bool) -> T {
        self.view.isHidden = hidden; return self as! T
    }
    
    @discardableResult
    func frame(_ frame: CGRect) -> T {
        self.view.frame = frame; return self as! T
    }
    
    @discardableResult
    func size(_ size: CGSize) -> T {
        self.view.frame.size = size; return self as! T
    }
    
    @discardableResult
    func origin(_ origin: CGPoint) -> T {
        self.view.frame.origin = origin; return self as! T
    }
    
    @discardableResult
    func center(_ center: CGPoint) -> T {
        self.view.center = center; return self as! T
    }
    
    @discardableResult
    func minX(_ minX: CGFloat) -> T {
        self.view.frame.origin.x = minX; return self as! T
    }
    
    @discardableResult
    func minY(_ minY: CGFloat) -> T {
        self.view.frame.origin.y = minY; return self as! T
    }
    
    @discardableResult
    func centerX(_ centerX: CGFloat) -> T {
        self.view.center.x = centerX; return self as! T
    }
    
    @discardableResult
    func centerY(_ centerY: CGFloat) -> T {
        self.view.center.y = centerY; return self as! T
    }
}

// MARK: Chain Method
public extension ZQBaseViewChain {
    
    @discardableResult
    func removeFromSuperview() -> T {
        self.view.removeFromSuperview(); return self as! T
    }
    
    @discardableResult
    func didMoveToSuperview() -> T {
        self.view.didMoveToSuperview(); return self as! T
    }
    
    @discardableResult
    func didMoveToWindow() -> T {
        self.view.didMoveToWindow(); return self as! T
    }
    
    @discardableResult
    func setNeedsLayout() -> T {
        self.view.setNeedsLayout(); return self as! T
    }
    
    @discardableResult
    func layoutIfNeeded() -> T {
        self.view.layoutIfNeeded(); return self as! T
    }
    
    @discardableResult
    func layoutSubviews() -> T {
        self.view.layoutSubviews(); return self as! T
    }
    
    @discardableResult
    func layoutMarginsDidChange() -> T {
        self.view.layoutMarginsDidChange(); return self as! T
    }
    
    @discardableResult
    func setNeedsDisplay() -> T {
        self.view.setNeedsDisplay(); return self as! T
    }
    
    @discardableResult
    func insertSubview(_ view: UIView, at: Int) -> T {
        self.view.insertSubview(view, at: at); return self as! T
    }
    
    @discardableResult
    func insertSubview(_ view: UIView, aboveSubview: UIView) -> T {
        self.view.insertSubview(view, aboveSubview: aboveSubview); return self as! T
    }
    
    @discardableResult
    func insertSubview(_ view: UIView, belowSubview: UIView) -> T {
        self.view.insertSubview(view, belowSubview: belowSubview); return self as! T
    }
    
    @discardableResult
    func exchangeSubview(at index1: Int, withSubviewAt index2: Int) -> T {
        self.view.exchangeSubview(at: index1, withSubviewAt: index2); return self as! T
    }
    
    @discardableResult
    func addToSuperView(_ superview: UIView) -> T {
        superview.addSubview(view); return self as! T
    }
    
    @discardableResult
    func bringSubviewToFront(_ view: UIView) -> T {
        self.view.bringSubviewToFront(view); return self as! T
    }
    
    @discardableResult
    func sendSubviewToBack(_ view: UIView) -> T {
        self.view.sendSubviewToBack(view); return self as! T
    }
    
    @discardableResult
    func didAddSubview(_ view: UIView) -> T {
        self.view.didAddSubview(view); return self as! T
    }
    
    @discardableResult
    func willRemoveSubview(_ view: UIView) -> T {
        self.view.willRemoveSubview(view); return self as! T
    }
    
    @discardableResult
    func willMove(toSuperview: UIView) -> T {
        self.view.willMove(toSuperview: toSuperview); return self as! T
    }
    
    @discardableResult
    func willMove(toWindow: UIWindow) -> T {
        self.view.willMove(toWindow: toWindow); return self as! T
    }
    
    @discardableResult
    func draw(_ rect: CGRect) -> T {
        self.view.draw(rect); return self as! T
    }
    
    @discardableResult
    func setNeedsDisplay(_ rect: CGRect) -> T {
        self.view.setNeedsDisplay(rect); return self as! T
    }
}

// MARK: Layer
public extension ZQBaseViewChain {
    
    @discardableResult
    func masksToBounds(_ masksToBounds: Bool) -> T {
        self.view.layer.masksToBounds = masksToBounds; return self as! T
    }
    
    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> T {
        self.view.layer.cornerRadius = cornerRadius; return self as! T
    }
    
    @discardableResult
    func borderColor(_ borderColor: CGColor) -> T {
        self.view.layer.borderColor = borderColor; return self as! T
    }
    
    @discardableResult
    func borderWidth(_ borderWidth: CGFloat) -> T {
        self.view.layer.borderWidth = borderWidth; return self as! T
    }
}


// MARK: UIView
public class ZQUIViewChain: ZQBaseViewChain<UIView, ZQUIViewChain> {
    
}

