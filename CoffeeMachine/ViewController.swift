//
//  ViewController.swift
//  CoffeeMachine
//
//  Created by mac on 24.07.2018.
//  Copyright © 2018 SINED. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var coffee = CoffeeMachine.init(whaterPortions: 10, cofeePortions: 3, milkPortions: 10, donePortionsNumber: 10)
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentState()
        theInformationLabel.text = "choose your drink"
        checkCondition()
        
        
        
    }
    
    
    
    @IBAction func theEspressoButton() {
        currentState()
        if checkCondition() == true {
        coffee.espresso()
        theInformationLabel.text = "your espresso"
        currentState()
        }
        else {
            currentState()
            return
        }
    }
    
    func currentState() {
        theWhaterPortionsLabel.text = String(coffee.whaterPortions)
        coffeePortionsLabel.text = String(coffee.coffeePortions)
        milkPortionsLabel.text = String(coffee.milkPortions)
        donePortionsLabel.text = String(coffee.donePortionsNumber)
    }
    
    func checkCondition() -> Bool {
        
        var toMakeCofee = true
        
        if coffee.checkWhater() == false {
            toMakeCofee = false
            theInformationLabel.text = "add whater"
            return toMakeCofee
        }
        
        if coffee.checkCoffee() == false {
            toMakeCofee = false
            theInformationLabel.text = "add coffee"
            return toMakeCofee
        }
        
        if coffee.checkMilk() == false {
            toMakeCofee = false
            theInformationLabel.text = "add milk"
            return toMakeCofee
        }
        
        if coffee.checkDonePortionsNumber() == false {
            toMakeCofee = false
            theInformationLabel.text = "clean me"
            return toMakeCofee
        }
        
        return toMakeCofee
    }
    
    @IBOutlet weak var theWhaterPortionsLabel: UILabel!
    
    @IBOutlet weak var coffeePortionsLabel: UILabel!
    
    @IBOutlet weak var milkPortionsLabel: UILabel!
    
    @IBOutlet weak var donePortionsLabel: UILabel!
    
    @IBOutlet weak var theInformationLabel: UILabel!
}

