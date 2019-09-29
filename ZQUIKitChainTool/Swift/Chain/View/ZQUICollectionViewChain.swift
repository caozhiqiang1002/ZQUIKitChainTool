//
//  ZQUICollectionViewChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUICollectionViewChain: ZQBaseScrollViewChain<UICollectionView, ZQUICollectionViewChain> {
    
}

// MARK: Chain Property
public extension ZQUICollectionViewChain {
    
    @discardableResult
    func collectionViewLayout(_ collectionViewLayout: UICollectionViewLayout) -> ZQUICollectionViewChain {
        self.view.collectionViewLayout = collectionViewLayout; return self
    }
    
    @discardableResult
    func delegate(_ delegate: UICollectionViewDelegate?) -> ZQUICollectionViewChain {
        self.view.delegate = delegate; return self
    }
    
    @discardableResult
    func dataSource(_ dataSource: UICollectionViewDataSource?) -> ZQUICollectionViewChain {
        self.view.dataSource = dataSource; return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    func prefetchDataSource(_ prefetchDataSource: UICollectionViewDataSourcePrefetching?) -> ZQUICollectionViewChain {
        self.view.prefetchDataSource = prefetchDataSource; return self;
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dragDelegate(_ dragDelegate: UICollectionViewDragDelegate?) -> ZQUICollectionViewChain {
        self.view.dragDelegate = dragDelegate; return self;
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dropDelegate(_ dropDelegate: UICollectionViewDropDelegate?) -> ZQUICollectionViewChain {
        self.view.dropDelegate = dropDelegate; return self;
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    func prefetchingEnabled(_ prefetchingEnabled: Bool) -> ZQUICollectionViewChain {
        self.view.isPrefetchingEnabled = prefetchingEnabled; return self;
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> ZQUICollectionViewChain {
        self.view.dragInteractionEnabled = dragInteractionEnabled; return self;
    }
    
    @discardableResult
    func allowsSelection(_ allowsSelection: Bool) -> ZQUICollectionViewChain {
        self.view.allowsSelection = allowsSelection; return self;
    }
    
    @discardableResult
    func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> ZQUICollectionViewChain {
        self.view.allowsMultipleSelection = allowsMultipleSelection; return self;
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func reorderingCadence(_ reorderingCadence: UICollectionView.ReorderingCadence) -> ZQUICollectionViewChain {
        self.view.reorderingCadence = reorderingCadence; return self
    }
    
    @discardableResult
    func backgroundView(_ backgroundView: UIView?) -> ZQUICollectionViewChain {
        self.view.backgroundView = backgroundView; return self
    }
    
}

// MARK: Chain Method
public extension ZQUICollectionViewChain {
    
    @discardableResult
    func register(_ cellClass: AnyClass?, identifier: String) -> ZQUICollectionViewChain {
        self.view.register(cellClass, forCellWithReuseIdentifier: identifier); return self
    }
    
    @discardableResult
    func register(_ viewClass: AnyClass?, kind: String, identifier: String) -> ZQUICollectionViewChain {
        self.view.register(viewClass, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier); return self
    }
    
    @discardableResult
    func register(_ nib: UINib?, identifier: String) -> ZQUICollectionViewChain {
        self.view.register(nib, forCellWithReuseIdentifier: identifier); return self
    }
    
    @discardableResult
    func register(_ nib: UINib?, kind: String, identifier: String) -> ZQUICollectionViewChain {
        self.view.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier); return self
    }
    
    @discardableResult
    func selectItem(at: IndexPath?, animated: Bool, position: UICollectionView.ScrollPosition) -> ZQUICollectionViewChain {
        self.view.selectItem(at: at, animated: animated, scrollPosition: position); return self
    }
    
    @discardableResult
    func deselectItem(at: IndexPath, animated: Bool) -> ZQUICollectionViewChain {
        self.view.deselectItem(at: at, animated: animated); return self
    }
    
    @discardableResult
    func reloadData() -> ZQUICollectionViewChain {
        self.view.reloadData(); return self
    }
    
    @discardableResult
    func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool) -> ZQUICollectionViewChain {
        self.view.setCollectionViewLayout(layout, animated: animated); return self
    }
    
    @discardableResult
    func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)?) -> ZQUICollectionViewChain {
        self.view.setCollectionViewLayout(layout, animated: animated, completion: completion); return self
    }
    
    @discardableResult
    func scrollToItem(_ at: IndexPath, position: UICollectionView.ScrollPosition, animated: Bool) -> ZQUICollectionViewChain {
        self.view.scrollToItem(at: at, at: position, animated: animated); return self
    }
    
    @discardableResult
    func insertSections(_ sections: IndexSet) -> ZQUICollectionViewChain {
        self.view.insertSections(sections); return self
    }
    
    @discardableResult
    func deleteSections(_ sections: IndexSet) -> ZQUICollectionViewChain {
        self.view.deleteSections(sections); return self
    }
    
    @discardableResult
    func reloadSections(_ sections: IndexSet) -> ZQUICollectionViewChain {
        self.view.reloadSections(sections); return self
    }
    
    @discardableResult
    func moveSection(_ section: Int, toSection: Int) -> ZQUICollectionViewChain {
        self.view.moveSection(section, toSection: toSection); return self
    }
    
    @discardableResult
    func insertItems(_ at: [IndexPath]) -> ZQUICollectionViewChain {
        self.view.insertItems(at: at); return self
    }
    
    @discardableResult
    func deleteItems(_ at: [IndexPath]) -> ZQUICollectionViewChain {
        self.view.deleteItems(at: at); return self
    }
    
    @discardableResult
    func reloadItems(_ at: [IndexPath]) -> ZQUICollectionViewChain {
        self.view.reloadItems(at: at); return self
    }
    
    @discardableResult
    func moveItem(_ at: IndexPath, to: IndexPath) -> ZQUICollectionViewChain {
        self.view.moveItem(at: at, to: to); return self
    }
    
    @discardableResult
    func beginInteractiveMovementForItem(at: IndexPath) -> ZQUICollectionViewChain {
        self.view.beginInteractiveMovementForItem(at: at); return self
    }
    
    @discardableResult
    func updateInteractiveMovementTargetPosition(_ position: CGPoint) -> ZQUICollectionViewChain {
        self.view.updateInteractiveMovementTargetPosition(position); return self
    }
    
    @discardableResult
    func endInteractiveMovement() -> ZQUICollectionViewChain {
        self.view.endInteractiveMovement(); return self
    }
    
    @discardableResult
    func cancelInteractiveMovement() -> ZQUICollectionViewChain {
        self.view.cancelInteractiveMovement(); return self
    }
}
