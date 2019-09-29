//
//  ZQUITableViewChain.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/27.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

public class ZQUITableViewChain: ZQBaseScrollViewChain<UITableView, ZQUITableViewChain> {
    
}

// MARK: Chain Property
public extension ZQUITableViewChain {
    
    @discardableResult
    func dataSource(_ dataSource: UITableViewDataSource?) -> ZQUITableViewChain {
        self.view.dataSource = dataSource; return self
    }
    
    @discardableResult
    func delegate(_ delegate: UITableViewDelegate?) -> ZQUITableViewChain {
        self.view.delegate = delegate; return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dragDelegate(_ dragDelegate: UITableViewDragDelegate?) -> ZQUITableViewChain {
        self.view.dragDelegate = dragDelegate; return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dropDelegate(_ dropDelegate: UITableViewDropDelegate?) -> ZQUITableViewChain {
        self.view.dropDelegate = dropDelegate; return self
    }
    
    @discardableResult
    func rowHeight(_ rowHeight: CGFloat) -> ZQUITableViewChain {
        self.view.rowHeight = rowHeight; return self
    }
    
    @discardableResult
    func sectionHeaderHeight(_ sectionHeaderHeight: CGFloat) -> ZQUITableViewChain {
        self.view.sectionHeaderHeight = sectionHeaderHeight; return self
    }
    
    @discardableResult
    func sectionFooterHeight(_ sectionFooterHeight: CGFloat) -> ZQUITableViewChain {
        self.view.sectionFooterHeight = sectionFooterHeight; return self
    }
    
    @discardableResult
    func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat) -> ZQUITableViewChain {
        self.view.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight; return self
    }
    
    @discardableResult
    func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat) -> ZQUITableViewChain {
        self.view.estimatedSectionFooterHeight = estimatedSectionFooterHeight; return self
    }
    
    @discardableResult
    func separatorInset(_ separatorInset: UIEdgeInsets) -> ZQUITableViewChain {
        self.view.separatorInset = separatorInset; return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func separatorInsetReference(_ separatorInsetReference: UITableView.SeparatorInsetReference) -> ZQUITableViewChain {
        self.view.separatorInsetReference = separatorInsetReference; return self
    }
    
    @discardableResult
    func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> ZQUITableViewChain {
        self.view.separatorStyle = separatorStyle; return self
    }
    
    @discardableResult
    func backgroundView(_ backgroundView: UIView?) -> ZQUITableViewChain {
        self.view.backgroundView = backgroundView; return self
    }
    
    @discardableResult
    func tableHeaderView(_ tableHeaderView: UIView?) -> ZQUITableViewChain {
        self.view.tableHeaderView = tableHeaderView; return self
    }
    
    @discardableResult
    func tableFooterView(_ tableFooterView: UIView?) -> ZQUITableViewChain {
        self.view.tableFooterView = tableFooterView; return self
    }
    
    @discardableResult
    func separatorColor(_ separatorColor: UIColor?) -> ZQUITableViewChain {
        self.view.separatorColor = separatorColor; return self
    }
    
    @discardableResult
    func separatorEffect(_ separatorEffect: UIVisualEffect?) -> ZQUITableViewChain {
        self.view.separatorEffect = separatorEffect; return self
    }
    
    @discardableResult
    func editing(_ editing: Bool) -> ZQUITableViewChain {
        self.view.isEditing = editing; return self
    }
    
    @discardableResult
    func allowsSelection(_ allowsSelection: Bool) -> ZQUITableViewChain {
        self.view.allowsSelection = allowsSelection; return self
    }
    
    @discardableResult
    func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool) -> ZQUITableViewChain {
        self.view.allowsSelectionDuringEditing = allowsSelectionDuringEditing; return self
    }
    
    @discardableResult
    func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> ZQUITableViewChain {
        self.view.allowsMultipleSelection = allowsMultipleSelection; return self
    }
    
    @discardableResult
    func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool) -> ZQUITableViewChain {
        self.view.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing; return self
    }
    
    @discardableResult
    func cellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth: Bool) -> ZQUITableViewChain {
        self.view.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth; return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func insetsContentViewsToSafeArea(_ insetsContentViewsToSafeArea: Bool) -> ZQUITableViewChain {
        self.view.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea; return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> ZQUITableViewChain {
        self.view.dragInteractionEnabled = dragInteractionEnabled; return self
    }
    
}

// MARK: Chain Method
public extension ZQUITableViewChain {
    
    @discardableResult
    func scrollToRow(at row: IndexPath, at postion: UITableView.ScrollPosition, animated: Bool) -> ZQUITableViewChain {
        self.view.scrollToRow(at: row, at: postion, animated: animated); return self
    }
    
    @discardableResult
    func insertSections(_ sections: IndexSet, with: UITableView.RowAnimation) -> ZQUITableViewChain {
        self.view.insertSections(sections, with: with); return self
    }
    
    @discardableResult
    func deleteSections(_ sections: IndexSet, with: UITableView.RowAnimation) -> ZQUITableViewChain {
        self.view.deleteSections(sections, with: with); return self
    }
    
    @discardableResult
    func reloadSections(_ sections: IndexSet, with: UITableView.RowAnimation) -> ZQUITableViewChain {
        self.view.reloadSections(sections, with: with); return self
    }
    
    @discardableResult
    func moveSection(_ from: Int, toSection: Int) -> ZQUITableViewChain {
        self.view.moveSection(from, toSection: toSection); return self
    }
    
    @discardableResult
    func insertRows(at rows: [IndexPath], with: UITableView.RowAnimation) -> ZQUITableViewChain {
        self.view.insertRows(at: rows, with: with); return self
    }
    
    @discardableResult
    func deleteRows(at rows: [IndexPath], with: UITableView.RowAnimation) -> ZQUITableViewChain {
        self.view.deleteRows(at: rows, with: with); return self
    }
    
    @discardableResult
    func reloadRows(at rows: [IndexPath], with: UITableView.RowAnimation) -> ZQUITableViewChain {
        self.view.reloadRows(at: rows, with: with); return self
    }
    
    @discardableResult
    func moveRow(at from: IndexPath, to: IndexPath) -> ZQUITableViewChain {
        self.view.moveRow(at: from, to: to); return self
    }
    
    @discardableResult
    func reloadData() -> ZQUITableViewChain {
        self.view.reloadData(); return self
    }
    
    @discardableResult
    func setEditing(_ editing: Bool, animated: Bool) -> ZQUITableViewChain {
        self.view.setEditing(editing, animated: animated); return self
    }
    
    @discardableResult
    func selectRow(at row: IndexPath, animated: Bool,  scrollPosition: UITableView.ScrollPosition) -> ZQUITableViewChain {
        self.view.selectRow(at: row, animated: animated, scrollPosition: scrollPosition); return self
    }
    
    @discardableResult
    func deselectRow(at row: IndexPath, animated: Bool) -> ZQUITableViewChain {
        self.view.deselectRow(at: row, animated: animated); return self
    }
    
    @discardableResult
    func register(_ cellClass: AnyClass?, cellIdentifer: String) -> ZQUITableViewChain {
        self.view.register(cellClass, forCellReuseIdentifier: cellIdentifer); return self
    }
    
    @discardableResult
    func register(_ viewClass: AnyClass?, headerFooterIdentifier: String) -> ZQUITableViewChain {
        self.view.register(viewClass, forHeaderFooterViewReuseIdentifier: headerFooterIdentifier); return self
    }
    
    @discardableResult
    func register(_ nib: UINib,  cellIdentifer: String) -> ZQUITableViewChain {
        self.view.register(nib, forCellReuseIdentifier: cellIdentifer); return self
    }
    
    @discardableResult
    func register(_ nib: UINib, headerFooterIdentifier: String) -> ZQUITableViewChain {
        self.view.register(nib, forHeaderFooterViewReuseIdentifier: headerFooterIdentifier); return self
    }
}
