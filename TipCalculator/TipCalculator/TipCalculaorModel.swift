//
//  TipCalculaorModel.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation
//import UIKit

class TipCalculatorModel {
    
    var total: Double        //แก้จาก let เป็น var
    var taxPct: Double
    var subtotal: Double{
        get {
            return total / (taxPct + 1) //เพิ่มมาใหม่
        }
    }
    
    
    
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        
        //subtotal = total / (taxPct + 1)
        
    }
    
    func calcTipWithTipPct(tipPct:Double) -> Double{
        return subtotal * tipPct
    }
    
    func returnPossibleTips() -> [Int: Double]{
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit: [Double] = [0.15, 0.18, 0.20]
        var numberOfItems = possibleTipsInferred.count
        
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred  {
            let intPct = Int(possibleTip * 100)
            
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }
}
