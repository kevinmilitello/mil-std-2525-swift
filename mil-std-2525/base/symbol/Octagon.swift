//
//  BoundingOctagon.swift
//  mil-std-2525
//
//  Created by Kevin on 9/4/17.
//  Copyright © 2017 Kevin Militello. All rights reserved.
//

import UIKit

class Octagon{
    
    let sides = 8
    var angle: CGFloat?
    var length: CGFloat?
    var height: CGFloat?
    var path = UIBezierPath()
    var points = [CGPoint]()
    let DEGREES_TO_RADIANS = CGFloat.pi/180.0
    
    convenience init(L: CGFloat) {
        self.init(length: L, height: L)
    }
    
    init(length: CGFloat, height: CGFloat) {
        self.length = length
        self.height = height
        self.angle = 360.0 / CGFloat(sides)
        let startPoint = CGPoint(x: cos(0.0), y: sin(0.0))
        points.append(startPoint)
        path.move(to: points[0])
        var currentPoint = startPoint
        
        for i in 2...sides+1 {
            let degree = angle! * CGFloat(i-1)
            currentPoint = pointFor(degree: degree)
            points.append(currentPoint)
            path.addLine(to: currentPoint)
        }
        path.close()
    }
   
    func pointFor(degree: CGFloat) -> CGPoint{
        var nextPoint = CGPoint()
        nextPoint.x = cos(degree*DEGREES_TO_RADIANS)
        nextPoint.y = sin(degree*DEGREES_TO_RADIANS)
        return nextPoint
    }
}
