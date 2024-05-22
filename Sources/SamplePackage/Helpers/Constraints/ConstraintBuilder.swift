//
//  ConstraintBuilder.swift
//  CredUIKit
//
//  Created by Somesh Karthik on 15/06/22.
//  Copyright © 2022 Dreamplug. All rights reserved.
//

import Foundation

@resultBuilder
 struct ConstraintBuilder {
     static func buildBlock(_ components: [ConstraintCreator]...) -> [ConstraintCreator] {
        components.flatMap { $0 }
    }

     static func buildExpression(_ expression: ConstraintCreator) -> [ConstraintCreator] {
        [expression]
    }

     static func buildEither(first component: [ConstraintCreator]) -> [ConstraintCreator] {
        component
    }

     static func buildEither(second component: [ConstraintCreator]) -> [ConstraintCreator] {
        component
    }

     static func buildOptional(_ component: [ConstraintCreator]?) -> [ConstraintCreator] {
        component ?? []
    }
}
