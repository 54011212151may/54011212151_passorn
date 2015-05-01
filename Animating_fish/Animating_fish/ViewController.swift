//
//  ViewController.swift
//  Animating_fish
//
//  Created by iStudents on 4/17/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func ButtonAnimation(sender: AnyObject) {
        
        
        for i in 0...5 {
            
            let fish = UIImageView()
            let fishRandom = Int(arc4random_uniform(5)+1)
            
            fish.image = UIImage(named: "icon3.png")
            fish.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
            self.view.addSubview(fish)
            
            let randomYOffset = CGFloat( arc4random_uniform(150))
            
            let path = UIBezierPath()
            path.moveToPoint(CGPoint(x: 16, y: 239 + randomYOffset))
            path.addCurveToPoint(CGPoint(x: 301, y: 239 + randomYOffset), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
            
            let anim = CAKeyframeAnimation(keyPath: "position")
            anim.path = path.CGPath
            anim.rotationMode = kCAAnimationRotateAuto
            anim.repeatCount = Float.infinity
            anim.duration = 2.0
            
            anim.duration = Double(arc4random_uniform(40)+30) / 10
            anim.timeOffset = Double(arc4random_uniform(290))
    
            fish.layer.addAnimation(anim, forKey: "animate position along path")
            //square.layer.addAnimation(anim, forKey: "animate position along path")     //  square.layer.addAnimation(anim, forKey: "animate position along path")
            
            
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "1234336958.jpg"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

