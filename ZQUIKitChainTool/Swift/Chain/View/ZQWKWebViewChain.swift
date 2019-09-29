//
//  ZQWKWebViewChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit
import WebKit

public class ZQWKWebViewChain: ZQBaseViewChain<WKWebView, ZQWKWebViewChain> {
    
}

// MARK: Chain Property
public extension ZQWKWebViewChain {
    
    @discardableResult
    func navigationDelegate(_ navigationDelegate: WKNavigationDelegate?) -> ZQWKWebViewChain {
        self.view.navigationDelegate = navigationDelegate; return self
    }
    
    @discardableResult
    func UIDelegate(_ UIDelegate: WKUIDelegate?) -> ZQWKWebViewChain {
        self.view.uiDelegate = UIDelegate; return self
    }
    
    @discardableResult
    func allowsBackForwardNavigationGestures(_ allowsBackForwardNavigationGestures: Bool) -> ZQWKWebViewChain {
        self.view.allowsBackForwardNavigationGestures = allowsBackForwardNavigationGestures; return self
    }
    
    @discardableResult
    func allowsLinkPreview(_ allowsLinkPreview: Bool) -> ZQWKWebViewChain {
        self.view.allowsLinkPreview = allowsLinkPreview; return self
    }
    
    @discardableResult
    func customUserAgent(_ customUserAgent: String?) -> ZQWKWebViewChain {
        self.view.customUserAgent = customUserAgent; return self
    }
}

// MARK: Chain Method
public extension ZQWKWebViewChain {
    
    @discardableResult
    func load(_ request: URLRequest) -> ZQWKWebViewChain {
        self.view.load(request); return self
    }
    
    @discardableResult
    func loadFileURL(_ URL: URL, allowingReadAccessTo: URL) -> ZQWKWebViewChain {
        self.view.loadFileURL(URL, allowingReadAccessTo: allowingReadAccessTo); return self
    }
    
    @discardableResult
    func loadHTMLString(_ string: String, baseURL: URL?) -> ZQWKWebViewChain {
        self.view.loadHTMLString(string, baseURL: baseURL); return self
    }
    
    @discardableResult
    func load(_ data: Data, mimeType: String, characterEncodingName: String, baseURL: URL) -> ZQWKWebViewChain {
        self.view.load(data, mimeType: mimeType, characterEncodingName: characterEncodingName, baseURL: baseURL); return self
    }
    
    @discardableResult
    func go(to: WKBackForwardListItem) -> ZQWKWebViewChain {
        self.view.go(to: to); return self
    }
    
    @discardableResult
    func goBack() -> ZQWKWebViewChain {
        self.view.goBack(); return self
    }
    
    @discardableResult
    func goForward() -> ZQWKWebViewChain {
        self.view.goForward(); return self
    }
    
    @discardableResult
    func reload() -> ZQWKWebViewChain {
        self.view.reload(); return self
    }
    
    @discardableResult
    func reloadFromOrigin() -> ZQWKWebViewChain {
        self.view.reloadFromOrigin(); return self
    }
    
    @discardableResult
    func stopLoading() -> ZQWKWebViewChain {
        self.view.stopLoading(); return self
    }
    
    @discardableResult
    func evaluateJavaScript(_ javaScriptString: String, completionHandler: ((Any?, Error?) -> Void)?) -> ZQWKWebViewChain {
        self.view.evaluateJavaScript(javaScriptString, completionHandler: completionHandler); return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func takeSnapshot(with: WKSnapshotConfiguration?, completionHandler: @escaping (UIImage?, Error?) -> Void) -> ZQWKWebViewChain {
        self.view.takeSnapshot(with: with, completionHandler: completionHandler); return self
    }
}
