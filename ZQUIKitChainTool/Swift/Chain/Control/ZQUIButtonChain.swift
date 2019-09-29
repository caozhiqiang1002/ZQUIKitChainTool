//
//  ZQUIButtonChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/29.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUIButtonChain: ZQBaseControlChain<UIButton, ZQUIButtonChain> {
    
}

// MARK: Chain Property
public extension ZQUIButtonChain {
    
    @discardableResult
    func contentEdgeInsets(_ contentEdgeInsets: UIEdgeInsets) -> ZQUIButtonChain {
        self.view.contentEdgeInsets = contentEdgeInsets; return self
    }
    
    @discardableResult
    func titleEdgeInsets(_ titleEdgeInsets: UIEdgeInsets) -> ZQUIButtonChain {
        self.view.titleEdgeInsets = titleEdgeInsets; return self
    }
    
    @discardableResult
    func imageEdgeInsets(_ imageEdgeInsets: UIEdgeInsets) -> ZQUIButtonChain {
        self.view.imageEdgeInsets = imageEdgeInsets; return self
    }
    
    @discardableResult
    func adjustsImageWhenHighlighted(_ adjustsImageWhenHighlighted: Bool) -> ZQUIButtonChain {
        self.view.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted; return self
    }
    
    @discardableResult
    func adjustsImageWhenDisabled(_ adjustsImageWhenDisabled: Bool) -> ZQUIButtonChain {
        self.view.adjustsImageWhenDisabled = adjustsImageWhenDisabled; return self
    }
    
    @discardableResult
    func setFont(_ font: UIFont) -> ZQUIButtonChain {
        self.view.titleLabel?.font = font; return self
    }
    
    @discardableResult
    func setTextAlignment(_ alignment: NSTextAlignment) -> ZQUIButtonChain {
        self.view.titleLabel?.textAlignment = alignment; return self
    }
}

// MARK: Chain Method
public extension ZQUIButtonChain {
    
    @discardableResult
    func setTitle(_ title: String?, for state: UIControl.State) -> ZQUIButtonChain {
        self.view.setTitle(title, for: state); return self
    }
    
    @discardableResult
    func setTitleColor(_ titleColor: UIColor, for state: UIControl.State) -> ZQUIButtonChain {
        self.view.setTitleColor(titleColor, for: state); return self
    }
    
    @discardableResult
    func setTitleShadowColor(_ color: UIColor, for state: UIControl.State) -> ZQUIButtonChain {
        self.view.setTitleShadowColor(color, for: state); return self
    }
    
    @discardableResult
    func setImage(_ image: UIImage, for state: UIControl.State) -> ZQUIButtonChain {
        self.view.setImage(image, for: state); return self
    }
    
    @discardableResult
    func setBackgroundImage(_ image: UIImage, for state: UIControl.State) -> ZQUIButtonChain {
        self.view.setBackgroundImage(image, for: state); return self
    }
    
    @discardableResult
    func setAttributedTitle(_ attribute: NSAttributedString?, for state: UIControl.State) -> ZQUIButtonChain {
        self.view.setAttributedTitle(attribute, for: state); return self
    }
}
