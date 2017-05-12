//
//  Dwift.swift
//  natcode_0101
//
//  Created by Carlyn Maw on 5/12/17.
//  Copyright © 2017 carlynorama. All rights reserved.
//

import Foundation
import UIKit





//MARK: ShapeObject
class ShapeObject {
    //var uipath: UIBezierPath?
    var svgDescription:String {
        get {
            return "I am a shape"
        }
    }
}

//MARK:Vector
class Vector:ShapeObject {
    
}

class DVector:ShapeObject {
    
}

//MARK: Circle
class DCircle:ShapeObject {
    var radius: CGFloat //The radius of the circle.
    var center: CGPoint
    
    var cx: CGFloat { get { return center.x } }
    var cy: CGFloat { get { return center.y } }
    var width: CGFloat {get {return radius * 2 } }
    var height: CGFloat { get { return radius * 2 } }
    
    var tlx: CGFloat { get { return center.x - radius } }
    var tly: CGFloat { get { return center.y - radius } }
    var blx: CGFloat { get { return center.x - radius } }
    var bly: CGFloat { get { return center.y + radius } }
    
    var boundingRect: CGRect { get { return CGRect(x: blx, y: bly, width: width, height: height) } }
    
    var uipath: UIBezierPath {
        get {
            let path =  UIBezierPath(arcCenter: center, radius: radius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
            path.close()
            return path
        }
    }
    
    override var svgDescription: String {
        return "<circle cx=\"\(cx)\" cy=\"\(cy)\" r=\"\(radius)\" />"
    }
    
    
    init(centerAt centerPoint: CGPoint, ofRadius radiusSize:CGFloat) {
        center = centerPoint
        radius = radiusSize
    }
}
