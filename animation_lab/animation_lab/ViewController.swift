//
//  ViewController.swift
//  animation_lab
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberOfFishSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
    
      //  let coloredSquare = UIView()
        
      //  coloredSquare.backgroundColor = UIColor.blueColor()
       // coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
       // self.view.addSubview(coloredSquare)
        
       // let options = UIViewAnimationOptions.Repeat
       // let duration = 1.0
       // let delay = 0.0
       // let delay = NSTimeInterval(900 + arc4random_uniform(100)) / 1000
       // let damping = 0.5
       // let velocity = 1.0
        
       // let size : CGFloat = CGFloat( arc4random_uniform(40))+20
        
  
       // let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20

        
      /*  UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
            
            coloredSquare.backgroundColor = UIColor.redColor()
            
            // again use the square constants size and yPosition
            coloredSquare.frame = CGRectMake(320-size, yPosition, size, size)
            
            }, completion: { animationFinished in
                
            coloredSquare.removeFromSuperview()
                
        })*/
        
    }

    @IBAction func animateButtonPressed(sender: AnyObject) {
       /* let coloredSquare = UIView()
        coloredSquare.backgroundColor = UIColor.blueColor()
        coloredSquare.frame = CGRect(x:0, y:120, width:50, height:50)
        self.view.addSubview(coloredSquare)
        
        let size : CGFloat = 50
        let yPosition : CGFloat = 120
        
        coloredSquare.backgroundColor = UIColor.blueColor()
        coloredSquare.frame = CGRectMake(0, yPosition, size, size)
        self.view.addSubview(coloredSquare) */
        
        let numberOfFish = Int(self.numberOfFishSlider.value)
        
        for loopNumber in 1...numberOfFish {
            
            let duration = 1.0
            let options = UIViewAnimationOptions.CurveLinear
            let delay = NSTimeInterval(100 + arc4random_uniform(100)) / 1000
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
            let fish = UIImageView()
            
            fish.image = UIImage(named: "icon91.png")
            fish.frame = CGRectMake(0-size, yPosition, size, size)
            self.view.addSubview(fish)

            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                fish.frame = CGRectMake(320, yPosition, size, size)
                
                }, completion: { animationFinished in
        
                    fish.removeFromSuperview()
            })
        }    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

