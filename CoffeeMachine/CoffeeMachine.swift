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
    
    func checkCoffee() -> Bool {
        var noCofee = true
        if coffeePortions == 0 {
            noCofee = false
            return noCofee
        }
        return noCofee
    }
    
    func checkWhater() -> Bool {
        var noWhater = true
        if whaterPortions == 0 {
            noWhater = false
        }
        return noWhater
    }
    
    func checkMilk() -> Bool {
        var noMilk = true
        if milkPortions == 0 {
            noMilk = false
            return noMilk
        }
        return noMilk
    }
    
    func checkDonePortionsNumber() -> Bool {
        var needToClean = true
        if donePortionsNumber == 0 {
            needToClean = false
            return needToClean
        }
        return needToClean
    }
    
    func espresso() {
        spendWhater()
        spendCofee()
        donePortion()
    }
    
    
    
    
    
}

