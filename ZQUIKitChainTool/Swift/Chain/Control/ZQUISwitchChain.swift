//
//  ZQUISwitchChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/29.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUISwitchChain: ZQBaseControlChain<UISwitch, ZQUISwitchChain> {
    
}

// MARK: Chain Property
public extension ZQUISwitchChain {
    
    @discardableResult
    func onTintColor(_ onTintColor: UIColor?) -> ZQUISwitchChain {
        self.view.onTintColor = onTintColor; return self
    }
    
    @discardableResult
    func thumbTintColor(_ thumbTintColor: UIColor?) -> ZQUISwitchChain {
        self.view.thumbTintColor = thumbTintColor; return self
    }
    
    @discardableResult
    func onImage(_ onImage: UIImage?) -> ZQUISwitchChain {
        self.view.onImage = onImage; return self
    }
    
    @discardableResult
    func offImage(_ offImage: UIImage?) -> ZQUISwitchChain {
        self.view.offImage = offImage; return self
    }
    
    @discardableResult
    func on(_ on: Bool) -> ZQUISwitchChain {
        self.view.isOn = on; return self
    }
}

// MARK: Chain Method
public extension ZQUISwitchChain {
    
    @discardableResult
    func setOn(_ on: Bool, animated: Bool) -> ZQUISwitchChain {
        self.view.setOn(on, animated: animated); return self
    }
}
