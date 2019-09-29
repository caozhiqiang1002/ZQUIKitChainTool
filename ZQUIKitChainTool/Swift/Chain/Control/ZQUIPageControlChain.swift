//
//  ZQUIPageControlChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/29.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUIPageControlChain: ZQBaseControlChain<UIPageControl, ZQUIPageControlChain> {

}

// MARK: Chain Property
public extension ZQUIPageControlChain {
    
    @discardableResult
    func numberOfPages(_ numberOfPages: Int) -> ZQUIPageControlChain {
        self.view.numberOfPages = numberOfPages; return self
    }
    
    @discardableResult
    func currentPage(_ currentPage: Int) -> ZQUIPageControlChain {
        self.view.currentPage = currentPage; return self
    }
    
    @discardableResult
    func hidesForSinglePage(_ hidesForSinglePage: Bool) -> ZQUIPageControlChain {
        self.view.hidesForSinglePage = hidesForSinglePage; return self
    }
    
    @discardableResult
    func defersCurrentPageDisplay(_ defersCurrentPageDisplay: Bool) -> ZQUIPageControlChain {
        self.view.defersCurrentPageDisplay = defersCurrentPageDisplay; return self
    }
    
    @discardableResult
    func pageIndicatorTintColor(_ pageIndicatorTintColor: UIColor?) -> ZQUIPageControlChain {
        self.view.pageIndicatorTintColor = pageIndicatorTintColor; return self
    }
    
    @discardableResult
    func currentPageIndicatorTintColor(_ currentPageIndicatorTintColor: UIColor?) -> ZQUIPageControlChain {
        self.view.currentPageIndicatorTintColor = currentPageIndicatorTintColor; return self
    }
}

// MARK: Chain Method
public extension ZQUIPageControlChain {
    
    @discardableResult
    func updateCurrentPageDisplay() -> ZQUIPageControlChain {
        self.view.updateCurrentPageDisplay(); return self
    }
}
