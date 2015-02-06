//
//  ViewController.swift
//  lebWeek4
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sum : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var labelOne: UILabel!
    
    
    @IBOutlet weak var LabelTwo: UILabel!
    
    
    @IBOutlet weak var LabelThree: UILabel!
   
   
    @IBAction func buttonOne(sender: AnyObject) {
        sum += 1
        labelOne.text = String(format: "%d", sum)
    }
    
    @IBAction func bttonTwo(sender: AnyObject) {
        sum -= 1
        LabelTwo.text = String(format: "%d", sum)
    }
    @IBAction func buttonThree(sender: AnyObject) {
        sum += 2
        LabelThree.text = String(format: "%d", sum)
    }
    @IBAction func buttonReset(sender: AnyObject) {
        labelOne.text = "0"
        LabelTwo.text = "0"
        LabelThree.text = "0"
        sum = 0
    }
}

