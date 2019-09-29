//
//  ZQUISliderChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/29.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUISliderChain: ZQBaseControlChain<UISlider, ZQUISliderChain> {

}

// MARK: Chain Property
public extension ZQUISliderChain {
    
    @discardableResult
    func value(_ value: Float) -> ZQUISliderChain {
        self.view.value = value; return self
    }
    
    @discardableResult
    func minimumValue(_ minimumValue: Float) -> ZQUISliderChain {
        self.view.minimumValue = minimumValue; return self
    }
    
    @discardableResult
    func maximumValue(_ maximumValue: Float) -> ZQUISliderChain {
        self.view.maximumValue = maximumValue; return self
    }
    
    @discardableResult
    func minimumValueImage(_ minimumValueImage: UIImage?) -> ZQUISliderChain {
        self.view.minimumValueImage = minimumValueImage; return self
    }
    
    @discardableResult
    func maximumValueImage(_ maximumValueImage: UIImage?) -> ZQUISliderChain {
        self.view.maximumValueImage = maximumValueImage; return self
    }
    
    @discardableResult
    func continuous(_ continuous: Bool) -> ZQUISliderChain {
        self.view.isContinuous = continuous; return self
    }
    
    @discardableResult
    func minimumTrackTintColor(_ minimumTrackTintColor: UIColor?) -> ZQUISliderChain {
        self.view.minimumTrackTintColor = minimumTrackTintColor; return self
    }
    
    @discardableResult
    func maximumTrackTintColor(_ maximumTrackTintColor: UIColor?) -> ZQUISliderChain {
        self.view.maximumTrackTintColor = maximumTrackTintColor; return self
    }
    
    @discardableResult
    func thumbTintColor(_ thumbTintColor: UIColor?) -> ZQUISliderChain {
        self.view.thumbTintColor = thumbTintColor; return self
    }
}

// MARK: Chain Method
public extension ZQUISliderChain {
    
    @discardableResult
    func setThumbImage(_ image: UIImage?, for state: UIControl.State) -> ZQUISliderChain {
        self.view.setThumbImage(image, for: state); return self
    }
    
    @discardableResult
    func setMinimumTrackImage(_ image: UIImage?, for state: UIControl.State) -> ZQUISliderChain {
        self.view.setMinimumTrackImage(image, for: state); return self
    }
    
    @discardableResult
    func setMaximumTrackImage(_ image: UIImage?, for state: UIControl.State) -> ZQUISliderChain {
        self.view.setMaximumTrackImage(image, for: state); return self
    }
}
