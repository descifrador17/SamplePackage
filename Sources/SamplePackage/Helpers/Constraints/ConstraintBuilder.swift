//
//  ConstraintBuilder.swift
//  CredUIKit
//
//  Created by Somesh Karthik on 15/06/22.
//  Copyright © 2022 Dreamplug. All rights reserved.
//

import Foundation

@resultBuilder
public struct ConstraintBuilder {
    public static func buildBlock(_ components: [ConstraintCreator]...) -> [ConstraintCreator] {
        components.flatMap { $0 }
    }

    public static func buildExpression(_ expression: ConstraintCreator) -> [ConstraintCreator] {
        [expression]
    }

    public static func buildEither(first component: [ConstraintCreator]) -> [ConstraintCreator] {
        component
    }

    public static func buildEither(second component: [ConstraintCreator]) -> [ConstraintCreator] {
        component
    }

    public static func buildOptional(_ component: [ConstraintCreator]?) -> [ConstraintCreator] {
        component ?? []
    }
}
