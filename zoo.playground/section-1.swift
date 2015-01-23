// Playground - noun: a place where people can play

import UIKit
class zoo  {
    let animal:[String] = ["สิงโต","งู","ไก่"]
    let food:[String] = ["เนื้อ","ไก่","ข้าว"]
    var sum: String
    
    init(animal : String){
        self.sum = animal
        
    }
    
    func af() -> String{
        var tall = ""
        for (var i = 0; i < animal.count; i++){
            if (sum == animal[i]){
                tall = food[i]
            }
        }
        return tall
    }
}

let fAnimal = zoo(animal: "ไก่")
fAnimal.af()


