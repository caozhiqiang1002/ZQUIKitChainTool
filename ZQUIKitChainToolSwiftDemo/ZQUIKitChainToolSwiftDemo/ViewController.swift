//
//  ViewController.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/26.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit
import ZQUIKitChainTool

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        
        self.createViewMethod1()
        self.createViewMethod2()
        self.createViewMethod3()
        
        self.addGestureMethod1()
        self.addGestureMethod2()
        self.addGestureMethod3()
    }
    
    //MARK: 普通创建视图
    //MARK: 方式一
    func createViewMethod1() {
        self.view.addView.viewTool
            .frame(CGRect(x: 10, y: 10, width: 100, height: 100))
            .backgroundColor(.red)
    }
    
    //MARK: 方式二
    func createViewMethod2() {
        let subView = self.view.addView;
        subView.viewTool
            .frame(CGRect(x: 10, y: 120, width: 100, height: 100))
            .backgroundColor(.red)
    }
    
    //MARK: 方式三
    func createViewMethod3() {
        UIView().viewTool
            .frame(CGRect(x: 10, y: 230, width: 100, height: 100))
            .backgroundColor(.red)
            .addToSuperView(self.view)
    }
    
    //MARK: 添加手势
    //MARK: 方式一
    func addGestureMethod1() {
        self.view.addView.viewTool
            .frame(CGRect(x: 120, y: 10, width: 100, height: 100))
            .backgroundColor(.green)
            .view
            .addTapGesture.tapGestureTool
            .addTarget(self, action: #selector(click(tap:)))
    }
    
    // MARK: 方式二
    func addGestureMethod2() {
        let subView = self.view.addView.viewTool
            .frame(CGRect(x: 120, y: 120, width: 100, height: 100))
            .backgroundColor(.green)
            .view
        
        subView.addTapGesture.tapGestureTool
            .addTarget(self, action: #selector(click(tap:)))
    }
    
    // MARK: 方式三
    func addGestureMethod3() {
        let subView = UIView().viewTool
            .frame(CGRect(x: 120, y: 230, width: 100, height: 100))
            .backgroundColor(.green)
            .addToSuperView(self.view)
            .view
        
        UITapGestureRecognizer().tapGestureTool
            .addTarget(self, action: #selector(click(tap:)))
            .addGesture(toView: subView)
    }
    
    @objc func click(tap: UITapGestureRecognizer) {
        print("click")
    }
}

