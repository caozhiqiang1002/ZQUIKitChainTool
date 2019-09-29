//
//  ZQUIActivityIndicatorViewChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUIActivityIndicatorViewChain: ZQBaseViewChain<UIActivityIndicatorView, ZQUIActivityIndicatorViewChain> {
    
}

// MARK: Chain Property
public extension ZQUIActivityIndicatorViewChain {
    
    @discardableResult
    func activityIndicatorViewStyle(_ activityIndicatorViewStyle: UIActivityIndicatorView.Style) -> ZQUIActivityIndicatorViewChain {
        self.view.style = activityIndicatorViewStyle; return self
    }
    
    @discardableResult
    func hidesWhenStopped(_ hidesWhenStopped: Bool) -> ZQUIActivityIndicatorViewChain {
        self.view.hidesWhenStopped = hidesWhenStopped; return self
    }
}

// MARK: Chain Method
public extension ZQUIActivityIndicatorViewChain {
    
    @discardableResult
    func startAnimating() -> ZQUIActivityIndicatorViewChain {
        self.view.startAnimating(); return self
    }
    
    @discardableResult
    func stopAnimating() -> ZQUIActivityIndicatorViewChain {
        self.view.stopAnimating(); return self
    }
}
