//
//  CoffeeMachine.swift
//  CoffeMachine
//
//  Created by mac on 24.07.2018.
//  Copyright © 2018 SINED. All rights reserved.
//

import UIKit

class CoffeeMachine: NSObject {
    
    var whaterPortions: Int
    var coffeePortions: Int
    var milkPortions: Int
    var donePortionsNumber: Int
    
    init(whaterPortions: Int, cofeePortions: Int, milkPortions: Int, donePortionsNumber: Int) {
        self.whaterPortions = whaterPortions
        self.milkPortions = milkPortions
        self.donePortionsNumber = donePortionsNumber
        self.coffeePortions = cofeePortions
    }
    
    
    
    func spendWhater() {
       whaterPortions = whaterPortions - 1
    }
    
    func spendCofee() {
       coffeePortions = coffeePortions - 1
    }
    
    func spendMilk() {
        milkPortions = milkPortions - 1
    }
    
    func donePortion() {
       donePortionsNumber = donePortionsNumber - 1
    }
    
    func checkCoffee() {
        if coffeePortions == 0 {
            print("please, add coffe")
        }
    }
    
    func checkWhater() {
        if whaterPortions == 0 {
            print("please, add whater")
        }
    }
    
    func checkMilk() {
        if milkPortions == 0 {
            print("please, add milk")
        }
    }
    
    func checkDonePortionsNumber() {
        if donePortionsNumber == 0 {
            print("please, clean me")
        }
    }
    
    func espresso() {
        spendWhater()
        spendCofee()
        donePortion()
    }
    
    
    
    
    
    
}

