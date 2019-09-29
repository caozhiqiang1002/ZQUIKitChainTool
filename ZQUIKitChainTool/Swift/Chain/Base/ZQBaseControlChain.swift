//
//  ZQBaseControlChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/29.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQBaseControlChain<C: UIControl, T>: ZQBaseViewChain<C, T> {
    
}

// MARK: Chain Property
public extension ZQBaseControlChain {
    
    @discardableResult
    func enabled(_ enabled: Bool) -> T {
        self.view.isEnabled = enabled; return self as! T
    }
    
    @discardableResult
    func selected(_ selected: Bool) -> T {
        self.view.isSelected = selected; return self as! T
    }
    
    @discardableResult
    func highlighted(_ highlighted: Bool) -> T {
        self.view.isHighlighted = highlighted; return self as! T
    }
    
    @discardableResult
    func contentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> T {
        self.view.contentVerticalAlignment = contentVerticalAlignment; return self as! T
    }
    
    @discardableResult
    func contentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> T {
        self.view.contentHorizontalAlignment = contentHorizontalAlignment; return self as! T
    }
}

// MARK: Chain Method
public extension ZQBaseControlChain {
    
    @discardableResult
    func beginTracking(_ touch: UITouch, with event: UIEvent?) -> T {
        self.view.beginTracking(touch, with: event); return self as! T
    }
    
    @discardableResult
    func continueTracking(_ touch: UITouch, with event: UIEvent?) -> T {
        self.view.continueTracking(touch, with: event); return self as! T
    }
    
    @discardableResult
    func endTracking(_ touch: UITouch?, with event: UIEvent?) -> T {
        self.view.endTracking(touch, with: event); return self as! T
    }
    
    @discardableResult
    func cancelTracking(with event: UIEvent?) -> T {
        self.view.cancelTracking(with: event); return self as! T
    }
    
    @discardableResult
    func addTarget(_ target: Any?, action: Selector, for event: UIControl.Event) -> T {
        self.view.addTarget(target, action: action, for: event); return self as! T
    }
    
    @discardableResult
    func removeTarget(_ target: Any?, action: Selector?, for event: UIControl.Event) -> T {
        self.view.removeTarget(target, action: action, for: event); return self as! T
    }
    
    @discardableResult
    func sendAction(_ action: Selector, to target: Any?, for event: UIEvent?) -> T {
        self.view.sendAction(action, to: target, for: event); return self as! T
    }
    
    @discardableResult
    func sendActions(for event: UIControl.Event) -> T {
        self.view.sendActions(for: event); return self as! T
    }
}


// MARK: UIControl
public class ZQUIControlChain: ZQBaseControlChain<UIControl, ZQUIControlChain> {
    
}
