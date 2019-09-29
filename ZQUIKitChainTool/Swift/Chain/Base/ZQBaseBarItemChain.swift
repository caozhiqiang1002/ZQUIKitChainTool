//
//  ZQBaseBarItemChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/29.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQBaseBarItemChain<B: UIBarItem, T>: NSObject {
    public var barItem: B
    
    init(barItem: B) { self.barItem = barItem }
}

// MARK: Chain Property
public extension ZQBaseBarItemChain {
    
    @discardableResult
    func enabled(_ enabled: Bool) -> T {
        self.barItem.isEnabled = enabled; return self as! T
    }
    
    @discardableResult
    func title(_ title: String?) -> T {
        self.barItem.title = title; return self as! T
    }
    
    @discardableResult
    func image(_ image: UIImage?) -> T {
        self.barItem.image = image; return self as! T
    }
    
    @discardableResult
    func landscapeImagePhone(_ landscapeImagePhone: UIImage?) -> T {
        self.barItem.landscapeImagePhone = landscapeImagePhone; return self as! T
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func largeContentSizeImage(_ largeContentSizeImage: UIImage?) -> T {
        self.barItem.largeContentSizeImage = largeContentSizeImage; return self as! T
    }
    
    @discardableResult
    func imageInsets(_ imageInsets: UIEdgeInsets) -> T {
        self.barItem.imageInsets = imageInsets; return self as! T;
    }
    
    @discardableResult
    func landscapeImagePhoneInsets(_ landscapeImagePhoneInsets: UIEdgeInsets) -> T {
        self.barItem.landscapeImagePhoneInsets = landscapeImagePhoneInsets; return self as! T;
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func largeContentSizeImageInsets(_ largeContentSizeImageInsets: UIEdgeInsets) -> T {
        self.barItem.largeContentSizeImageInsets = largeContentSizeImageInsets; return self as! T;
    }
    
    @discardableResult
    func tag(_ tag: Int) -> T {
        self.barItem.tag = tag; return self as! T
    }
}

// MARK: Chain Method
public extension ZQBaseBarItemChain {
    
    @discardableResult
    func setTitleTextAttributes(_ attributes: [NSAttributedString.Key: Any]?, for state: UIControl.State) -> T {
        self.barItem.setTitleTextAttributes(attributes, for: state); return self as! T
    }
}


// MARK: UIBarItem
public class ZQUIBarItemChain: ZQBaseBarItemChain<UIBarItem, ZQUIBarItemChain> {
    
}
