//
//  ZQBaseControllChainTool.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/23.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQBaseControllChainTool.h"

#define ZQ_CHAIN_TOOL_CONTROL_IMPLEMENT(attr_class, attr_name, ...) \
- (id(^)(attr_class))attr_name __VA_ARGS__ { \
    return ^id(attr_class attr_name) { \
        self.control.attr_name = attr_name; \
        return self; \
    }; \
} \

@implementation ZQBaseControllChainTool

- (UIControl *)control {
    return self.view;
}

#pragma mark - Chain Property

ZQ_CHAIN_TOOL_CONTROL_IMPLEMENT(BOOL, enabled);
ZQ_CHAIN_TOOL_CONTROL_IMPLEMENT(BOOL, selected);
ZQ_CHAIN_TOOL_CONTROL_IMPLEMENT(BOOL, highlighted);

ZQ_CHAIN_TOOL_CONTROL_IMPLEMENT(UIControlContentVerticalAlignment, contentVerticalAlignment);
ZQ_CHAIN_TOOL_CONTROL_IMPLEMENT(UIControlContentHorizontalAlignment, contentHorizontalAlignment);

#pragma mark - Chain Method

- (id(^)(UITouch *, UIEvent *))beginTrackingWithTouch {
    return ^id(UITouch *touch, UIEvent *event) {
        UIControl *control = self.view;
        [control beginTrackingWithTouch:touch withEvent:event];
        return self;
    };
}

- (id(^)(UITouch *, UIEvent *))continueTrackingWithTouch {
    return ^id(UITouch *touch, UIEvent *event) {
        UIControl *control = self.view;
        [control continueTrackingWithTouch:touch withEvent:event];
        return self;
    };
}

- (id(^)(UITouch *, UIEvent *))endTrackingWithTouch {
    return ^id(UITouch *touch, UIEvent *event) {
        UIControl *control = self.view;
        [control endTrackingWithTouch:touch withEvent:event];
        return self;
    };
}

- (id(^)(UIEvent *))cancelTrackingWithEvent {
    return ^id(UIEvent *event) {
        UIControl *control = self.view;
        [control cancelTrackingWithEvent:event];
        return self;
    };
}

- (id(^)(id, SEL, UIControlEvents))addTarget {
    return ^id(id target, SEL action, UIControlEvents controlEvents) {
        UIControl *control = self.view;
        [control addTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
}

- (id(^)(id, SEL, UIControlEvents))removeTarget {
    return ^id(id target, SEL action, UIControlEvents controlEvents) {
        UIControl *control = self.view;
        [control removeTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
}

- (id(^)(SEL, id, UIEvent *))sendAction {
    return ^id(SEL action, id target, UIEvent *event) {
        UIControl *control = self.view;
        [control sendAction:action to:target forEvent:event];
        return self;
    };
}

- (id(^)(UIControlEvents))sendActionsForControlEvents {
    return ^id(UIControlEvents controlEvents) {
        UIControl *control = self.view;
        [control sendActionsForControlEvents:controlEvents];
        return self;
    };
}

@end
