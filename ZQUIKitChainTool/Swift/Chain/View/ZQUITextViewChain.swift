//
//  ZQUITextViewChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUITextViewChain: ZQBaseScrollViewChain<UITextView, ZQUITextViewChain> {
    
}

// MARK: Chain Property
public extension ZQUITextViewChain {
    
    @discardableResult
    func delegate(_ delegate: UITextViewDelegate?) -> ZQUITextViewChain {
        self.view.delegate = delegate; return self
    }
    
    @discardableResult
    func inputView(_ inputView: UIView?) -> ZQUITextViewChain {
        self.view.inputView = inputView; return self
    }
    
    @discardableResult
    func inputAccessoryView(_ inputAccessoryView: UIView?) -> ZQUITextViewChain {
        self.view.inputAccessoryView = inputAccessoryView; return self
    }
    
    @discardableResult
    func text(_ text: String) -> ZQUITextViewChain {
        self.view.text = text; return self
    }
    
    @discardableResult
    func font(_ font: UIFont?) -> ZQUITextViewChain {
        self.view.font = font; return self
    }
    
    @discardableResult
    func textColor(_ textColor: UIColor?) -> ZQUITextViewChain {
        self.view.textColor = textColor; return self
    }
    
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString) -> ZQUITextViewChain {
        self.view.attributedText = attributedText; return self
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> ZQUITextViewChain {
        self.view.textAlignment = textAlignment; return self
    }
    
    @discardableResult
    func selectedRange(_ selectedRange: NSRange) -> ZQUITextViewChain {
        self.view.selectedRange = selectedRange; return self
    }
    
    @discardableResult
    func dataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes) -> ZQUITextViewChain {
        self.view.dataDetectorTypes = dataDetectorTypes; return self
    }
    
    @discardableResult
    func textContainerInset(_ textContainerInset: UIEdgeInsets) -> ZQUITextViewChain {
        self.view.textContainerInset = textContainerInset; return self
    }
    
    @discardableResult
    func editable(_ editable: Bool) -> ZQUITextViewChain {
        self.view.isEditable = editable; return self
    }
    
    @discardableResult
    func selectable(_ selectable: Bool) -> ZQUITextViewChain {
        self.view.isSelectable = selectable; return self
    }
    
    @discardableResult
    func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> ZQUITextViewChain {
        self.view.allowsEditingTextAttributes = allowsEditingTextAttributes; return self
    }
    
    @discardableResult
    func clearsOnInsertion(_ clearsOnInsertion: Bool) -> ZQUITextViewChain {
        self.view.clearsOnInsertion = clearsOnInsertion; return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func usesStandardTextScaling(_ usesStandardTextScaling: Bool) -> ZQUITextViewChain {
        self.view.usesStandardTextScaling = usesStandardTextScaling; return self
    }
}

// MARK: Chain Method
public extension ZQUITextViewChain {
    
    @discardableResult
    func scrollRangeToVisible(_ range: NSRange) -> ZQUITextViewChain {
        self.view.scrollRangeToVisible(range); return self
    }
}
