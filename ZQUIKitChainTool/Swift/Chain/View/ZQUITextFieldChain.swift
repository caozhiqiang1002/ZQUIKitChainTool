//
//  ZQUITextFieldChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUITextFieldChain: ZQBaseViewChain<UITextField, ZQUITextFieldChain> {
    
}

// MARK: Chain Property
public extension ZQUITextFieldChain {
    
    @discardableResult
    func delegate(_ delegate: UITextFieldDelegate?) -> ZQUITextFieldChain {
        self.view.delegate = delegate; return self
    }
    
    @discardableResult
    func textColor(_ textColor: UIColor?) -> ZQUITextFieldChain {
        self.view.textColor = textColor; return self
    }
    
    @discardableResult
    func font(_ font: UIFont?) -> ZQUITextFieldChain {
        self.view.font = font; return self
    }
    
    @discardableResult
    func text(_ text: String?) -> ZQUITextFieldChain {
        self.view.text = text; return self
    }
    
    @discardableResult
    func placeholder(_ placeholder: String?) -> ZQUITextFieldChain {
        self.view.placeholder = placeholder; return self
    }
    
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> ZQUITextFieldChain {
        self.view.attributedText = attributedText; return self
    }
    
    @discardableResult
    func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> ZQUITextFieldChain {
        self.view.attributedPlaceholder = attributedPlaceholder; return self
    }
    
    @discardableResult
    func background(_ background: UIImage?) -> ZQUITextFieldChain {
        self.view.background = background; return self
    }
    
    @discardableResult
    func disabledBackground(_ disabledBackground: UIImage?) -> ZQUITextFieldChain {
        self.view.disabledBackground = disabledBackground; return self
    }
    
    @discardableResult
    func leftView(_ leftView: UIView?) -> ZQUITextFieldChain {
        self.view.leftView = leftView; return self
    }
    
    @discardableResult
    func rightView(_ rightView: UIView?) -> ZQUITextFieldChain {
        self.view.rightView = rightView; return self
    }
    
    @discardableResult
    func inputView(_ inputView: UIView?) -> ZQUITextFieldChain {
        self.view.inputView = inputView; return self
    }
    
    @discardableResult
    func inputAccessoryView(_ inputAccessoryView: UIView?) -> ZQUITextFieldChain {
        self.view.inputAccessoryView = inputAccessoryView; return self
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> ZQUITextFieldChain {
        self.view.textAlignment = textAlignment; return self
    }
    
    @discardableResult
    func borderStyle(_ borderStyle: UITextField.BorderStyle) -> ZQUITextFieldChain {
        self.view.borderStyle = borderStyle; return self
    }
    
    @discardableResult
    func minimumFontSize(_ minimumFontSize: CGFloat) -> ZQUITextFieldChain {
        self.view.minimumFontSize = minimumFontSize; return self
    }
    
    @discardableResult
    func clearButtonMode(_ mode: UITextField.ViewMode) -> ZQUITextFieldChain {
        self.view.clearButtonMode = mode; return self
    }
    
    @discardableResult
    func rightViewMode(_ mode: UITextField.ViewMode) -> ZQUITextFieldChain {
        self.view.rightViewMode = mode; return self
    }
    
    @discardableResult
    func clearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> ZQUITextFieldChain {
        self.view.clearsOnBeginEditing = clearsOnBeginEditing; return self
    }
    
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> ZQUITextFieldChain {
        self.view.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth; return self
    }
    
    @discardableResult
    func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> ZQUITextFieldChain {
        self.view.allowsEditingTextAttributes = allowsEditingTextAttributes; return self
    }
    
    @discardableResult
    func clearsOnInsertion(_ clearsOnInsertion: Bool) -> ZQUITextFieldChain {
        self.view.clearsOnInsertion = clearsOnInsertion; return self
    }
}

// MARK: Chain Method
public extension ZQUITextFieldChain {
    
    @discardableResult
    func drawText(in rect: CGRect) -> ZQUITextFieldChain {
        self.view.drawText(in: rect); return self
    }
    
    @discardableResult
    func drawPlaceholder(in rect: CGRect) -> ZQUITextFieldChain {
        self.view.drawPlaceholder(in: rect); return self
    }
}
