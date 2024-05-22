//
//  UIViewExtension.swift
//
//
//  Created by Utkarsh Dayal on 22/05/24.
//

import UIKit

extension UIView {
    @discardableResult
    func fillSuperview() -> (left: NSLayoutConstraint, right: NSLayoutConstraint, top: NSLayoutConstraint, bottom: NSLayoutConstraint)? {
        translatesAutoresizingMaskIntoConstraints = false
        if let superview = superview {
            let left = leftAnchor.constraint(equalTo: superview.leftAnchor)
            let right = rightAnchor.constraint(equalTo: superview.rightAnchor)
            let top = topAnchor.constraint(equalTo: superview.topAnchor)
            let bottom = bottomAnchor.constraint(equalTo: superview.bottomAnchor)
            for constraint in [left, right, top, bottom] {
                constraint.isActive = true
            }
            return (left, right, top, bottom)
        }
        return nil
    }
}

/// Helper class for getting and setting Objective-C runtime properties on objects.
/// In this case object -> UIView and properties -> NSLayoutConstraint
 final class ObjectAssociation<T: AnyObject> {

    private let policy: objc_AssociationPolicy

    /// - Parameter policy: An association policy that will be used when linking objects.
     init(policy: objc_AssociationPolicy = .OBJC_ASSOCIATION_RETAIN_NONATOMIC) {
        self.policy = policy
    }

    /// Accesses associated object.
    /// - Parameter index: An object whose associated object is to be accessed.
     func get(index: AnyObject, key: inout String) -> T? {
        return objc_getAssociatedObject(index, &key) as! T?
    }

    /// Set associated object.
    /// - Parameter index: An object whose associated object is to be accessed.
     func set(index: AnyObject, key: inout String, newValue: T?) {
        objc_setAssociatedObject(index, &key, newValue, policy)
    }
}
