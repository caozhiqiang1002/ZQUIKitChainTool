//
//  ZQWKWebViewChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQWKWebViewChainTool.h"

@implementation ZQWKWebViewChainTool

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_IMPLEMENT(WKWebView, ZQWKWebViewChainTool, id<WKNavigationDelegate>, navigationDelegate);
ZQ_CHAIN_TOOL_IMPLEMENT(WKWebView, ZQWKWebViewChainTool, id<WKUIDelegate>, UIDelegate);

ZQ_CHAIN_TOOL_IMPLEMENT(WKWebView, ZQWKWebViewChainTool, BOOL, allowsBackForwardNavigationGestures);
ZQ_CHAIN_TOOL_IMPLEMENT(WKWebView, ZQWKWebViewChainTool, BOOL, allowsLinkPreview);

ZQ_CHAIN_TOOL_IMPLEMENT(WKWebView, ZQWKWebViewChainTool, NSString *, customUserAgent);

#pragma mark - Chain Method

- (ZQWKWebViewChainTool *(^)(NSURLRequest *))loadRequest {
    return ^ZQWKWebViewChainTool *(NSURLRequest *request) {
        WKWebView *webView = self.view;
        [webView loadRequest:request];
        return self;
    };
}

- (ZQWKWebViewChainTool *(^)(NSURL *, NSURL *))loadFileURL {
    return ^ZQWKWebViewChainTool *(NSURL *URL, NSURL *readAccessURL) {
        WKWebView *webView = self.view;
        [webView loadFileURL:URL allowingReadAccessToURL:readAccessURL];
        return self;
    };
}

- (ZQWKWebViewChainTool *(^)(NSString *, NSURL *))loadHTMLString {
    return ^ZQWKWebViewChainTool *(NSString *string, NSURL *baseURL) {
        WKWebView *webView = self.view;
        [webView loadHTMLString:string baseURL:baseURL];
        return self;
    };
}

- (ZQWKWebViewChainTool *(^)(NSData *, NSString *, NSString *, NSURL *))loadData {
    return ^ZQWKWebViewChainTool *(NSData *data, NSString *MIMEType, NSString *characterEncodingName, NSURL *baseURL) {
        WKWebView *webView = self.view;
        [webView loadData:data MIMEType:MIMEType characterEncodingName:characterEncodingName baseURL:baseURL];
        return self;
    };
}

- (ZQWKWebViewChainTool *(^)(WKBackForwardListItem *))goToBackForwardListItem {
    return ^ZQWKWebViewChainTool *(WKBackForwardListItem *item) {
        WKWebView *webView = self.view;
        [webView goToBackForwardListItem:item];
        return self;
    };
}

- (ZQWKWebViewChainTool *(^)(void))goBack {
    return ^ZQWKWebViewChainTool *(void) {
        WKWebView *webView = self.view;
        [webView goBack];
        return self;
    };
}

- (ZQWKWebViewChainTool *(^)(void))goForward {
    return ^ZQWKWebViewChainTool *(void) {
        WKWebView *webView = self.view;
        [webView goForward];
        return self;
    };
}

- (ZQWKWebViewChainTool *(^)(void))reload {
    return ^ZQWKWebViewChainTool *(void) {
        WKWebView *webView = self.view;
        [webView reload];
        return self;
    };
}

- (ZQWKWebViewChainTool *(^)(void))reloadFromOrigin {
    return ^ZQWKWebViewChainTool *(void) {
        WKWebView *webView = self.view;
        [webView reloadFromOrigin];
        return self;
    };
}

- (ZQWKWebViewChainTool *(^)(void))stopLoading {
    return ^ZQWKWebViewChainTool *(void) {
        WKWebView *webView = self.view;
        [webView stopLoading];
        return self;
    };
}

- (ZQWKWebViewChainTool *(^)(NSString *, void(^)(id, NSError *)))evaluateJavaScript_block {
    return ^ZQWKWebViewChainTool *(NSString *javaScriptString, void(^completionHandler)(id, NSError *)) {
        WKWebView *webView = self.view;
        [webView evaluateJavaScript:javaScriptString completionHandler:completionHandler];
        return self;
    };
}

- (ZQWKWebViewChainTool *(^)(WKSnapshotConfiguration *, void(^)(UIImage *, NSError *)))takeSnapshotWithConfiguration_block API_AVAILABLE(ios(11.0)) {
    return ^ZQWKWebViewChainTool *(WKSnapshotConfiguration *snapshotConfiguration, void(^completionHandler)(UIImage *, NSError *)) {
        WKWebView *webView = self.view;
        [webView takeSnapshotWithConfiguration:snapshotConfiguration completionHandler:completionHandler];
        return self;
    };
}

@end
