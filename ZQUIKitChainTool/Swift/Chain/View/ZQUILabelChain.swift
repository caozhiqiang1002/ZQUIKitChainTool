//
//  ZQUILabelChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUILabelChain: ZQBaseViewChain<UILabel, ZQUILabelChain> {
    
}

// MARK: Chain Property
public extension ZQUILabelChain {
    
    @discardableResult
    func text(_ text: String?) -> ZQUILabelChain {
        self.view.text = text; return self
    }
    
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> ZQUILabelChain {
        self.view.attributedText = attributedText; return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> ZQUILabelChain {
        self.view.font = font; return self
    }
    
    @discardableResult
    func textColor(_ textColor: UIColor) -> ZQUILabelChain {
        self.view.textColor = textColor; return self
    }
    
    @discardableResult
    func shadowColor(_ shadowColor: UIColor?) -> ZQUILabelChain {
        self.view.shadowColor = shadowColor; return self
    }
    
    @discardableResult
    func highlightedTextColor(_ highlightedTextColor: UIColor?) -> ZQUILabelChain {
        self.view.highlightedTextColor = highlightedTextColor; return self
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> ZQUILabelChain {
        self.view.textAlignment = textAlignment; return self
    }
    
    @discardableResult
    func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> ZQUILabelChain {
        self.view.lineBreakMode = lineBreakMode; return self
    }
    
    @discardableResult
    func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> ZQUILabelChain {
        self.view.baselineAdjustment = baselineAdjustment; return self
    }
    
    @discardableResult
    func highlighted(_ highlighted: Bool) -> ZQUILabelChain {
        self.view.isHighlighted = highlighted; return self
    }
    
    @discardableResult
    func enabled(_ enabled: Bool) -> ZQUILabelChain {
        self.view.isEnabled = enabled; return self
    }
    
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> ZQUILabelChain {
        self.view.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth; return self
    }
    
    @discardableResult
    func shadowOffset(_ shadowOffset: CGSize) -> ZQUILabelChain {
        self.view.shadowOffset = shadowOffset; return self
    }
    
    @discardableResult
    func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> ZQUILabelChain {
        self.view.minimumScaleFactor = minimumScaleFactor; return self
    }
    
    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> ZQUILabelChain {
        self.view.numberOfLines = numberOfLines; return self
    }
}
