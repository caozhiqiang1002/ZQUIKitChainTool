//
//  ZQUIProgressViewChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUIProgressViewChain: ZQBaseViewChain<UIProgressView, ZQUIProgressViewChain> {
    
}

// MARK: Chain Property
public extension ZQUIProgressViewChain {
    
    @discardableResult
    func progressViewStyle(_ progressViewStyle: UIProgressView.Style) -> ZQUIProgressViewChain {
        self.view.progressViewStyle = progressViewStyle; return self
    }
    
    @discardableResult
    func progress(_ progress: Float) -> ZQUIProgressViewChain {
        self.view.progress = progress; return self
    }
    
    @discardableResult
    func progressTintColor(_ progressTintColor: UIColor?) -> ZQUIProgressViewChain {
        self.view.progressTintColor = progressTintColor; return self
    }
    
    @discardableResult
    func trackTintColor(_ trackTintColor: UIColor?) -> ZQUIProgressViewChain {
        self.view.trackTintColor = trackTintColor; return self
    }
    
    @discardableResult
    func progressImage(_ progressImage: UIImage?) -> ZQUIProgressViewChain {
        self.view.progressImage = progressImage; return self
    }
    
    @discardableResult
    func trackImage(_ trackImage: UIImage?) -> ZQUIProgressViewChain {
        self.view.trackImage = trackImage; return self
    }
    
    @discardableResult
    func observedProgress(_ observedProgress: Progress?) -> ZQUIProgressViewChain {
        self.view.observedProgress = observedProgress; return self
    }
}

// MARK: Chain Method
public extension ZQUIProgressViewChain {
    
    @discardableResult
    func setProgress(_ progress: Float, animated: Bool) -> ZQUIProgressViewChain {
        self.view.setProgress(progress, animated: animated); return self
    }
}
