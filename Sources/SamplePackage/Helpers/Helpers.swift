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


