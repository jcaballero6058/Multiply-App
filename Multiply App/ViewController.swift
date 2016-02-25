//
//  ViewController.swift
//  Multiply App
//
//  Created by John G. Caballero on 9/28/15.
//  Copyright (c) 2015 John G. Caballero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBOutlet weak var calculatedNumber: UILabel!
    @IBOutlet weak var userInputNumberOne: UITextField!
    @IBOutlet weak var userInputNumberTwo: UITextField!
    @IBOutlet weak var imageBox: UIImageView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func calculate(sender: UIButton)
    {
        
        if (addSubtractMultiplyDivide.selectedSegmentIndex == 0)
        {
            let result = (userInputNumberOne.text.toInt() ?? 0) + (userInputNumberTwo.text.toInt() ?? 0)
            equalsTextFields.text = "\(result)"
        }
            
        else if (addSubtractMultiplyDivide.selectedSegmentIndex == 1)
        {
            let result = (userInputNumberOne.text.toInt() ?? 0) - (textFieldNumberTwo.text.toInt() ?? 0)
            equalsTextFields.text = "\(result)"
        }
            
        else if (addSubtractMultiplyDivide.selectedSegmentIndex == 2)
        {
            let result = (textFieldNumberOne.text.toInt() ?? 0) * (textFieldNumberTwo.text.toInt() ?? 0)
            equalsTextFields.text = "\(result)"
        }
            
        else if (addSubtractMultiplyDivide.selectedSegmentIndex == 3)
        {
            let result = (textFieldNumberOne.text.toInt() ?? 0) / (textFieldNumberTwo.text.toInt() ?? 0)
            equalsTextFields.text = "\(result)"
        }
        
        if equalsTextFields.text!.toInt() == 64
        {
            let yoshi = UIImage(named: "Mario Kart Competitor")
            imageBox.image = yoshi
        }
            
        else if equalsTextFields.text!.toInt()! % 2 == 0
        {
            let dog = UIImage(named: "Doge")
            imageBox.image = dog
        }
        
        
        if equalsTextFields.text!.toInt()! % 2 == 1
        {
            let bird = UIImage(named: "ost")
            imageBox.image = bird
        }
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

