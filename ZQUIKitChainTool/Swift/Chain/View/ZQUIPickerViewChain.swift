//
//  ZQUIPickerViewChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUIPickerViewChain: ZQBaseViewChain<UIPickerView, ZQUIPickerViewChain> {
    
}

// MARK: Chain Property
public extension ZQUIPickerViewChain {
    
    @discardableResult
    func delegate(_ delegate: UIPickerViewDelegate?) -> ZQUIPickerViewChain {
        self.view.delegate = delegate; return self
    }
    
    @discardableResult
    func dataSource(_ dataSource: UIPickerViewDataSource?) -> ZQUIPickerViewChain {
        self.view.dataSource = dataSource; return self
    }
}

// MARK: Chain Method
public extension ZQUIPickerViewChain {
    
    @discardableResult
    func reloadAllComponents() -> ZQUIPickerViewChain {
        self.view.reloadAllComponents(); return self
    }
    
    @discardableResult
    func reloadComponent(_ component: Int) -> ZQUIPickerViewChain {
        self.view.reloadComponent(component); return self
    }
    
    @discardableResult
    func selectRow(_ row: Int, inComponent: Int, animated: Bool) -> ZQUIPickerViewChain {
        self.view.selectRow(row, inComponent: inComponent, animated: animated); return self
    }
}
