//
//  ConstrainableAnchors.swift
//  CredUIKit
//
//  Created by Somesh Karthik on 15/06/22.
//  Copyright © 2022 Dreamplug. All rights reserved.
//

import UIKit

/// A protocol to handle adding constraints.
protocol ConstrainableAnchors: AnyObject {
    var leadingAnchor: NSLayoutXAxisAnchor { get }
    var trailingAnchor: NSLayoutXAxisAnchor { get }
    var leftAnchor: NSLayoutXAxisAnchor { get }
    var rightAnchor: NSLayoutXAxisAnchor { get }
    var topAnchor: NSLayoutYAxisAnchor { get }
    var bottomAnchor: NSLayoutYAxisAnchor { get }
    var widthAnchor: NSLayoutDimension { get }
    var heightAnchor: NSLayoutDimension { get }
    var centerXAnchor: NSLayoutXAxisAnchor { get }
    var centerYAnchor: NSLayoutYAxisAnchor { get }

    /// This method is called before activating the constraint.
    /// use this method to prepare for activation
    func prepareForActivatingConstraints()
}

extension UIView: ConstrainableAnchors {
    func prepareForActivatingConstraints() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}
extension UILayoutGuide: ConstrainableAnchors {
    func prepareForActivatingConstraints() {}
}
