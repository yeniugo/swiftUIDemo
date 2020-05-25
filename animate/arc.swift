//
//  arc.swift
//  animate
//
//  Created by 胡凯 on 2020/5/24.
//  Copyright © 2020 胡凯. All rights reserved.
//

import UIKit

class arcView: UIView, CAAnimationDelegate  {
    var templayer:CAShapeLayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        UIColor.red.set()
        let arclayer = CAShapeLayer()
        arclayer.strokeColor = UIColor.red.cgColor
        arclayer.fillColor = UIColor.clear.cgColor
        arclayer.shadowColor = UIColor.clear.cgColor
        arclayer.borderColor = UIColor.clear.cgColor
        let path = UIBezierPath(arcCenter: CGPoint(x: 150, y: 150), radius: 75,
                                startAngle: CGFloat.pi, endAngle: CGFloat(2*Float.pi), clockwise: true)
//        UIGraphicsBeginImageContext(self.bounds.size);
//        path.stroke()
//        UIGraphicsEndImageContext();
        arclayer.path = path.cgPath
        self.layer.addSublayer(arclayer)
        templayer = arclayer
//        path.close()
//        path.stroke()
//        path.close()
        
        let pathAnimation = CABasicAnimation.init(keyPath: "strokeEnd")
        pathAnimation.duration = 1.5
        pathAnimation.fromValue = 1
        pathAnimation.toValue = 0
        //pathAnimation.delegate = (window as! CAAnimationDelegate)
        pathAnimation.delegate = self
        pathAnimation.isRemovedOnCompletion = true
        arclayer.add(pathAnimation , forKey: "strokeEnd")
    }
    
    func animationDidStart(_ anim: CAAnimation) {
        
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        let path = UIBezierPath(arcCenter: CGPoint(x: 150, y: 150), radius: 75,
        startAngle: 0, endAngle: CGFloat(2*Float.pi), clockwise: true)
        templayer?.path = path.cgPath
        
        let pathAnimation = CABasicAnimation.init(keyPath: "strokeEnd")
        pathAnimation.duration = 3
        pathAnimation.fromValue = 0
        pathAnimation.toValue = 1
        //pathAnimation.delegate = (window as! CAAnimationDelegate)
        pathAnimation.delegate = self
        pathAnimation.isRemovedOnCompletion = true
        templayer?.add(pathAnimation , forKey: "strokeEnd")
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
