//
//  ZQBaseGestureChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/29.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQBaseGestureChain<G: UIGestureRecognizer, T>: NSObject {
    
    public var gesture: G
    
    init(gesture: G) { self.gesture = gesture }
}

// MARK: Chain Property
public extension ZQBaseGestureChain {
    
    @discardableResult
    func delegate(_ delegate: UIGestureRecognizerDelegate?) -> T {
        self.gesture.delegate = delegate; return self as! T
    }
    
    @discardableResult
    func enabled(_ enabled: Bool) -> T {
        self.gesture.isEnabled = enabled; return self as! T
    }
    
    @discardableResult
    func cancelsTouchesInView(_ cancelsTouchesInView: Bool) -> T {
        self.gesture.cancelsTouchesInView = cancelsTouchesInView; return self as! T
    }
    
    @discardableResult
    func delaysTouchesBegan(_ delaysTouchesBegan: Bool) -> T {
        self.gesture.delaysTouchesBegan = delaysTouchesBegan; return self as! T
    }
    
    @discardableResult
    func delaysTouchesEnded(_ delaysTouchesEnded: Bool) -> T {
        self.gesture.delaysTouchesEnded = delaysTouchesEnded; return self as! T
    }
    
    @available(iOS 9.2, *)
    @discardableResult
    func requiresExclusiveTouchType(_ requiresExclusiveTouchType: Bool) -> T {
        self.gesture.requiresExclusiveTouchType = requiresExclusiveTouchType; return self as! T
    }
    
    @discardableResult
    func allowedTouchTypes(_ allowedTouchTypes: [NSNumber]) -> T {
        self.gesture.allowedTouchTypes = allowedTouchTypes; return self as! T
    }
    
    @discardableResult
    func allowedPressTypes(_ allowedPressTypes: [NSNumber]) -> T {
        self.gesture.allowedPressTypes = allowedPressTypes; return self as! T
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func name(_ name: String?) -> T {
        self.gesture.name = name; return self as! T
    }
}

// MARK: Chain Method
public extension ZQBaseGestureChain {
    
    @discardableResult
    func addTarget(_ target: Any, action: Selector) -> T {
        self.gesture.addTarget(target, action: action); return self as! T
    }
    
    @discardableResult
    func removeTarget(_ target: Any?, action: Selector?) -> T {
        self.gesture.removeTarget(target, action: action); return self as! T
    }
    
    @discardableResult
    func require(toFail: UIGestureRecognizer) -> T {
        self.gesture.require(toFail: toFail); return self as! T
    }
    
    @discardableResult
    func addGesture(toView: UIView) -> T {
        toView.addGestureRecognizer(self.gesture); return self as! T
    }
}



// MARK: UIGestureRecognizer
public class ZQUIGestureChain: ZQBaseGestureChain<UIGestureRecognizer, ZQUIGestureChain> {
    
}
