//
//  ZQUIImageViewChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUIImageViewChain: ZQBaseViewChain<UIImageView, ZQUIImageViewChain> {
    
}

// MARK: Chain Property
public extension ZQUIImageViewChain {
    
    @discardableResult
    func image(_ image: UIImage?) -> ZQUIImageViewChain {
        self.view.image = image; return self
    }
    
    @discardableResult
    func highlightedImage(_ highlightedImage: UIImage?) -> ZQUIImageViewChain {
        self.view.highlightedImage = highlightedImage; return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func preferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?) -> ZQUIImageViewChain {
        self.view.preferredSymbolConfiguration = preferredSymbolConfiguration; return self
    }
    
    @discardableResult
    func animationImages(_ animationImages: [UIImage]?) -> ZQUIImageViewChain {
        self.view.animationImages = animationImages; return self
    }
    
    @discardableResult
    func highlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) -> ZQUIImageViewChain {
        self.view.highlightedAnimationImages = highlightedAnimationImages; return self
    }
    
    @discardableResult
    func animationDuration(_ animationDuration: TimeInterval) -> ZQUIImageViewChain {
        self.view.animationDuration = animationDuration; return self
    }
    
    @discardableResult
    func animationRepeatCount(_ animationRepeatCount: Int) -> ZQUIImageViewChain {
        self.view.animationRepeatCount = animationRepeatCount; return self
    }
    
    @discardableResult
    func highlighted(_ highlighted: Bool) -> ZQUIImageViewChain {
        self.view.isHighlighted = highlighted; return self
    }
}
