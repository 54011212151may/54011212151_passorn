//
//  ViewController.swift
//  Exam1_54011212151
//
//  Created by iStudents on 3/13/15.
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

    @IBOutlet weak var nameSubj: UITextField!
    @IBOutlet weak var work: UITextField!
    @IBOutlet weak var midterm: UITextField!
    @IBOutlet weak var final: UITextField!
    
    @IBOutlet weak var work2: UITextField!
    @IBOutlet weak var midterm2: UITextField!
    @IBOutlet weak var final2: UITextField!
    
    
    @IBAction func submit(sender: AnyObject) {
        
     /*   if (sum () >= 80){
            var grad  = "A"
            return ()
        }
        else (sum() <=  79.99 || sum() 74){
            grad.text = "B+"
            return ()
        }
        else (sum <= 73.99 || 68){
            grad.text = "B"
            return ()
        }
        else (sum <= 67.99 || 62){
           grad.text = "C+"
            return
        }*/


        
        namesub2.text   =   nameSubj.text
      
    }
    
    @IBAction func clear(sender: AnyObject) {
        nameSubj.text = " "
        namesub2.text = " "
        work.text = " "
        midterm.text = " "
        final.text = " "
        grad.text = " "
    }
    
    
    @IBOutlet weak var sum2: UILabel!
    
    @IBOutlet weak var grad: UILabel!
    
    @IBOutlet weak var namesub2: UILabel!
    
    
}

