//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Omer Winrauke on 6/29/15.
//  Copyright (c) 2015 Omer Winrauke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var dogYearsTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let ageMultiplier = 7;
        var intFromTextField = dogYearsTextField.text.toInt()!;
        var ageOfDog = intFromTextField * ageMultiplier;
        dogYearsLabel.text = "Dog Years: " + "\(ageOfDog)";
        dogYearsTextField.text = "";
        dogYearsTextField.resignFirstResponder();
    }

    @IBAction func convertRealButtonPressed(sender: UIButton) {
        var intFromTextField = dogYearsTextField.text.toInt()!;
        if (intFromTextField <= 2){
            dogYearsLabel.text = "Dog Years: " + "\(10.5*Double(intFromTextField))";
        }
        else {
            dogYearsLabel.text = "Dog Years: " + "\((10.5*2) + Double(4*(intFromTextField - 2)))";
        }
        dogYearsTextField.text = "";
        dogYearsTextField.resignFirstResponder();
    }
}

