//
//  BallView.swift
//  natcode_0101
//
//  Created by Carlyn Maw on 5/12/17.
//  Copyright © 2017 carlynorama. All rights reserved.
//

import UIKit


@IBDesignable
class BallView: UIView {
    
    @IBInspectable
    var scale: CGFloat = 0.9 { didSet { setNeedsDisplay() } }
    
    @IBInspectable
    var lineWeight:CGFloat = 5 { didSet { setNeedsDisplay() } }
    
    @IBInspectable
    var color: UIColor = UIColor.blue { didSet { setNeedsDisplay() } }
    
    @IBInspectable
    var xspeed:CGFloat = 1.1
    
    @IBInspectable
    var yspeed:CGFloat = 3.3
    
    @IBInspectable
    var location:CGPoint = CGPoint(x: 0, y: 0)
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        color.set()
        location = ballLocation()
        ballPath(atCenter: location, ofRadius: 20*scale).stroke()
        
    }
    
    private var UICenter:CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY)
    }
    
    private func ballPath(atCenter center:CGPoint, ofRadius radius:CGFloat) -> UIBezierPath {
        let thiscircle = DCircle(centerAt: center, ofRadius: radius)
        let path = thiscircle.uipath
        path.lineWidth = lineWeight
        return path
    }
    
    private func ballLocation() -> CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY)
    }
    
}
