//
//  ZQUIGestureChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/29.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

// MARK: Tap
public class ZQUITapGestureChain: ZQBaseGestureChain<UITapGestureRecognizer, ZQUITapGestureChain> {
    
    @discardableResult
    func numberOfTapsRequired(_ numberOfTapsRequired: Int) -> ZQUITapGestureChain {
        self.gesture.numberOfTapsRequired = numberOfTapsRequired; return self
    }
    
    @discardableResult
    func numberOfTouchesRequired(_ numberOfTouchesRequired: Int) -> ZQUITapGestureChain {
        self.gesture.numberOfTouchesRequired = numberOfTouchesRequired; return self
    }
}


// MARK: Swipe
public class ZQUISwipeGestureChain: ZQBaseGestureChain<UISwipeGestureRecognizer, ZQUISwipeGestureChain> {
    
    @discardableResult
    func numberOfTouchesRequired(_ numberOfTouchesRequired: Int) -> ZQUISwipeGestureChain {
        self.gesture.numberOfTouchesRequired = numberOfTouchesRequired; return self
    }
    
    @discardableResult
    func direction(_ direction: UISwipeGestureRecognizer.Direction) -> ZQUISwipeGestureChain {
        self.gesture.direction = direction; return self
    }
}


// MARK: ScreenEdgePan
public class ZQUIScreenEdgePanGestureChain: ZQBaseGestureChain<UIScreenEdgePanGestureRecognizer, ZQUIScreenEdgePanGestureChain> {
    
    @discardableResult
    func edges(_ edges: UIRectEdge) -> ZQUIScreenEdgePanGestureChain {
        self.gesture.edges = edges; return self
    }
}


// MARK: Rotation
public class ZQUIRotationGestureChain: ZQBaseGestureChain<UIRotationGestureRecognizer, ZQUIRotationGestureChain> {
    
    @discardableResult
    func rotation(_ rotation: CGFloat) -> ZQUIRotationGestureChain {
        self.gesture.rotation = rotation; return self
    }
}


// MARK: Pan
public class ZQUIPanGestureChain: ZQBaseGestureChain<UIPanGestureRecognizer, ZQUIPanGestureChain> {
    
    @discardableResult
    func minimumNumberOfTouches(_ minimumNumberOfTouches: Int) -> ZQUIPanGestureChain {
        self.gesture.minimumNumberOfTouches = minimumNumberOfTouches; return self
    }
    
    @discardableResult
    func maximumNumberOfTouches(_ maximumNumberOfTouches: Int) -> ZQUIPanGestureChain {
        self.gesture.maximumNumberOfTouches = maximumNumberOfTouches; return self
    }
    
    @discardableResult
    func setTranslation(_ translation: CGPoint, in view: UIView?) -> ZQUIPanGestureChain {
        self.gesture.setTranslation(translation, in: view); return self
    }
}


// MARK: LongPress
public class ZQUILongPressGestureChain: ZQBaseGestureChain<UILongPressGestureRecognizer, ZQUILongPressGestureChain> {
    
    @discardableResult
    func numberOfTapsRequired(_ numberOfTapsRequired: Int) -> ZQUILongPressGestureChain {
        self.gesture.numberOfTapsRequired = numberOfTapsRequired; return self
    }
    
    @discardableResult
    func numberOfTouchesRequired(_ numberOfTouchesRequired: Int) -> ZQUILongPressGestureChain {
        self.gesture.numberOfTouchesRequired = numberOfTouchesRequired; return self
    }
    
    @discardableResult
    func minimumPressDuration(_ minimumPressDuration: TimeInterval) -> ZQUILongPressGestureChain {
        self.gesture.minimumPressDuration = minimumPressDuration; return self
    }
    
    @discardableResult
    func allowableMovement(_ allowableMovement: CGFloat) -> ZQUILongPressGestureChain {
        self.gesture.allowableMovement = allowableMovement; return self
    }
}


// MARK: Pinch
public class ZQUIPinchGestureChain: ZQBaseGestureChain<UIPinchGestureRecognizer, ZQUIPinchGestureChain> {
    
    @discardableResult
    func scale(_ scale: CGFloat) -> ZQUIPinchGestureChain {
        self.gesture.scale = scale; return self
    }
}
