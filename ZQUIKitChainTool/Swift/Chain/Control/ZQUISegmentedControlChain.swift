//
//  ZQUISegmentedControlChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/29.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUISegmentedControlChain: ZQBaseControlChain<UISegmentedControl, ZQUISegmentedControlChain> {

}

// MARK: Chain Property
public extension ZQUISegmentedControlChain {
    
    @discardableResult
    func momentary(_ momentary: Bool) -> ZQUISegmentedControlChain {
        self.view.isMomentary = momentary; return self
    }
    
    @discardableResult
    func apportionsSegmentWidthsByContent(_ apportionsSegmentWidthsByContent: Bool) -> ZQUISegmentedControlChain {
        self.view.apportionsSegmentWidthsByContent = apportionsSegmentWidthsByContent; return self
    }
    
    @discardableResult
    func selectedSegmentIndex(_ selectedSegmentIndex: Int) -> ZQUISegmentedControlChain {
        self.view.selectedSegmentIndex = selectedSegmentIndex; return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func selectedSegmentTintColor(_ selectedSegmentTintColor: UIColor) -> ZQUISegmentedControlChain {
        self.view.selectedSegmentTintColor = selectedSegmentTintColor; return self
    }
}

// MARK: Chain Method
public extension ZQUISegmentedControlChain {
    
    @discardableResult
    func insertSegment(with title: String?, at index: Int, animated: Bool) -> ZQUISegmentedControlChain {
        self.view.insertSegment(withTitle: title, at: index, animated: animated); return self
    }
    
    @discardableResult
    func insertSegment(with image: UIImage?, at index: Int, animated: Bool) -> ZQUISegmentedControlChain {
        self.view.insertSegment(with: image, at: index, animated: animated); return self
    }
    
    @discardableResult
    func removeSegment(at index: Int, animated: Bool) -> ZQUISegmentedControlChain {
        self.view.removeSegment(at: index, animated: animated); return self
    }
    
    @discardableResult
    func removeAllSegments() -> ZQUISegmentedControlChain {
        self.view.removeAllSegments(); return self
    }
    
    @discardableResult
    func setTitle(_ title: String?, at index: Int) -> ZQUISegmentedControlChain {
        self.view.setTitle(title, forSegmentAt: index); return self
    }
    
    @discardableResult
    func setImage(_ image: UIImage?, at index: Int) -> ZQUISegmentedControlChain {
        self.view.setImage(image, forSegmentAt: index); return self
    }
    
    @discardableResult
    func setWidth(_ width: CGFloat, at index: Int) -> ZQUISegmentedControlChain {
        self.view.setWidth(width, forSegmentAt: index); return self
    }
    
    @discardableResult
    func setContentOffset(_ contentOffset: CGSize, at index: Int) -> ZQUISegmentedControlChain {
        self.view.setContentOffset(contentOffset, forSegmentAt: index); return self
    }
    
    @discardableResult
    func setEnabled(_ enabled: Bool, at index: Int) -> ZQUISegmentedControlChain {
        self.view.setEnabled(enabled, forSegmentAt: index); return self
    }
    
    @discardableResult
    func setBackgroundImage(_ image: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> ZQUISegmentedControlChain {
        self.view.setBackgroundImage(image, for: state, barMetrics: barMetrics); return self
    }
    
    @discardableResult
    func setDividerImage(_ image: UIImage?, left: UIControl.State, right: UIControl.State, barMetrics: UIBarMetrics) -> ZQUISegmentedControlChain {
        self.view.setDividerImage(image, forLeftSegmentState: left, rightSegmentState: right, barMetrics: barMetrics); return self
    }
    
    @discardableResult
    func setTitleTextAttributes(_ attributes:[NSAttributedString.Key: Any]?, for state: UIControl.State) -> ZQUISegmentedControlChain {
        self.view.setTitleTextAttributes(attributes, for: state); return self
    }
    
    @discardableResult
    func setContentPositionAdjustment(_ offset: UIOffset, segment: UISegmentedControl.Segment, barMetrics: UIBarMetrics) -> ZQUISegmentedControlChain {
        self.view.setContentPositionAdjustment(offset, forSegmentType: segment, barMetrics: barMetrics); return self;
    }
}
