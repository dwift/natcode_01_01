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
    var color: UIColor = UIColor.blue
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        color.set()
        ballPath(atCenter: UICenter, ofRadius: 20*scale).stroke()
        
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
    
    private func ballLocation() {
        
    }
    
}
