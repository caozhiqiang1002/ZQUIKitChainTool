//
//  ZQWKWebViewChainTool.h
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import <WebKit/WebKit.h>
#import "ZQBaseViewChainTool.h"


@class ZQWKWebViewChainTool;

@interface ZQWKWebViewChainTool : ZQBaseViewChainTool<ZQWKWebViewChainTool *>

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_INTERFACE(ZQWKWebViewChainTool, id<WKNavigationDelegate>, navigationDelegate);
ZQ_CHAIN_TOOL_INTERFACE(ZQWKWebViewChainTool, id<WKUIDelegate>, UIDelegate);

ZQ_CHAIN_TOOL_INTERFACE(ZQWKWebViewChainTool, BOOL, allowsBackForwardNavigationGestures);
ZQ_CHAIN_TOOL_INTERFACE(ZQWKWebViewChainTool, BOOL, allowsLinkPreview);

ZQ_CHAIN_TOOL_INTERFACE(ZQWKWebViewChainTool, NSString *, customUserAgent);

#pragma mark - Chain Method

- (ZQWKWebViewChainTool *(^)(NSURLRequest *))loadRequest;
- (ZQWKWebViewChainTool *(^)(NSURL *, NSURL *))loadFileURL;
- (ZQWKWebViewChainTool *(^)(NSString *, NSURL *))loadHTMLString;
- (ZQWKWebViewChainTool *(^)(NSData *, NSString *, NSString *, NSURL *))loadData;

- (ZQWKWebViewChainTool *(^)(WKBackForwardListItem *))goToBackForwardListItem;

- (ZQWKWebViewChainTool *(^)(void))goBack;
- (ZQWKWebViewChainTool *(^)(void))goForward;
- (ZQWKWebViewChainTool *(^)(void))reload;
- (ZQWKWebViewChainTool *(^)(void))reloadFromOrigin;
- (ZQWKWebViewChainTool *(^)(void))stopLoading;

- (ZQWKWebViewChainTool *(^)(NSString *, void(^)(id, NSError *)))evaluateJavaScript_block;

- (ZQWKWebViewChainTool *(^)(WKSnapshotConfiguration *, void(^)(UIImage *, NSError *)))takeSnapshotWithConfiguration_block API_AVAILABLE(ios(11.0));

@end
