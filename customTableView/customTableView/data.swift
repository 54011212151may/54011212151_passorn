//
//  data.swift
//  customTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<balloon> {
        var tempArray = Array<balloon>()
        
        let b1 = balloon(bImage: UIImage(named: "m1.png"), bName: "purple")
        tempArray.append(b1)
        
        let b2 = balloon(bImage: UIImage(named: "m2.png"), bName: "green")
        tempArray.append(b2)
        
        let b3 = balloon(bImage: UIImage(named: "m3.png"), bName: "yellow")
        tempArray.append(b3)
        
        let b4 = balloon(bImage: UIImage(named: "m4.png"), bName: "blue")
        tempArray.append(b4)
        
        let b5 = balloon(bImage: UIImage(named: "m5.png"), bName: "pink")
        tempArray.append(b5)
        
        return tempArray
    }
}

