//
//  Circle.swift
//  ClassExtension
//
//  Created by E5000855 on 27/06/24.
//

import Foundation
class Circle {
    var radius: Double

    init(radius: Double) {
        self.radius = radius
    }
}

extension Circle {
    var area: Double {
        return radius * radius * Double.pi
    }
}
