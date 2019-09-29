//
//  ZQUIBarItemChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/29.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUIBarButtonItemChain: ZQBaseBarItemChain<UIBarButtonItem, ZQUIBarButtonItemChain> {
    
}

// MARK: Chain Property
public extension ZQUIBarButtonItemChain {
    
    @discardableResult
    func style(_ style: UIBarButtonItem.Style) -> ZQUIBarButtonItemChain {
        self.barItem.style = style; return self
    }
    
    @discardableResult
    func width(_ width: CGFloat) -> ZQUIBarButtonItemChain {
        self.barItem.width = width; return self
    }
    
    @discardableResult
    func possibleTitles(_ possibleTitles: Set<String>?) -> ZQUIBarButtonItemChain {
        self.barItem.possibleTitles = possibleTitles; return self
    }
    
    @discardableResult
    func customView(_ customView: UIView?) -> ZQUIBarButtonItemChain {
        self.barItem.customView = customView; return self
    }
    
    @discardableResult
    func action(_ action: Selector?) -> ZQUIBarButtonItemChain {
        self.barItem.action = action; return self
    }
    
    @discardableResult
    func target(_ target: AnyObject?) -> ZQUIBarButtonItemChain {
        self.barItem.target = target; return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor?) -> ZQUIBarButtonItemChain {
        self.barItem.tintColor = tintColor; return self
    }
}

// MARK: Chain Method
public extension ZQUIBarButtonItemChain {
    
    @discardableResult
    func setBackgroundImage(_ image: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> ZQUIBarButtonItemChain {
        self.barItem.setBackgroundImage(image, for: state, barMetrics: barMetrics); return self
    }
    
    @discardableResult
    func setBackgroundImage(_ image: UIImage?, for state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics) -> ZQUIBarButtonItemChain {
        self.barItem.setBackgroundImage(image, for: state, style: style, barMetrics: barMetrics); return self
    }
    
    @discardableResult
    func setBackButtonBackgroundImage(_ image: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> ZQUIBarButtonItemChain {
        self.barItem.setBackButtonBackgroundImage(image, for: state, barMetrics: barMetrics); return self
    }
    
    @discardableResult
    func setBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> ZQUIBarButtonItemChain {
        self.barItem.setBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics); return self
    }
    
    @discardableResult
    func setBackButtonBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> ZQUIBarButtonItemChain {
        self.barItem.setBackButtonBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics); return self
    }
    
    @discardableResult
    func setTitlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> ZQUIBarButtonItemChain {
        self.barItem.setTitlePositionAdjustment(adjustment, for: barMetrics); return self
    }
    
    @discardableResult
    func setBackButtonTitlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> ZQUIBarButtonItemChain {
        self.barItem.setBackButtonTitlePositionAdjustment(adjustment, for: barMetrics); return self
    }
}


public class ZQUITabBarItemChain: ZQBaseBarItemChain<UITabBarItem, ZQUITabBarItemChain> {
    
}

// MARK: Chain Property
public extension ZQUITabBarItemChain {
    
    @discardableResult
    func selectedImage(_ selectedImage: UIImage?) -> ZQUITabBarItemChain {
        self.barItem.selectedImage = selectedImage; return self
    }
    
    @discardableResult
    func badgeValue(_ badgeValue: String?) -> ZQUITabBarItemChain {
        self.barItem.badgeValue = badgeValue; return self
    }
    
    @discardableResult
    @available(iOS 10.0, *)
    func badgeColor(_ badgeColor: UIColor?) -> ZQUITabBarItemChain {
        self.barItem.badgeColor = badgeColor; return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func standardAppearance(_ standardAppearance: UITabBarAppearance?) -> ZQUITabBarItemChain {
        self.barItem.standardAppearance = standardAppearance; return self
    }
    
    @discardableResult
    func titlePositionAdjustment(_ titlePositionAdjustment: UIOffset) -> ZQUITabBarItemChain {
        self.barItem.titlePositionAdjustment = titlePositionAdjustment; return self
    }
}

// MARK: Chain Method
public extension ZQUITabBarItemChain {
    
    @available(iOS 10.0, *)
    func setBadgeTextAttributes(_ attributes: [NSAttributedString.Key: Any]?, for state: UIControl.State) -> ZQUITabBarItemChain {
        self.barItem.setBadgeTextAttributes(attributes, for: state); return self
    }
}
