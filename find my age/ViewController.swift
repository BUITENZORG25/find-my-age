//
//  ViewController.swift
//  find my age
//
//  Created by hambaallah on 25/10/2018.
//  Copyright © 2018 hamba allah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var IaShowAge: UILabel!
    @IBOutlet weak var txtYearOfBirth: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func BuFindDage(_ sender: Any) {
        GetAge()
        
    }
    func GetAge(){
        // fire click of button
        let yearOfBirth = Int(txtYearOfBirth.text!)
        // get current year
        let date = Date()
        let calender = Calendar.current
        let year = calender.component(.year, from: date)
        let personAge = year - yearOfBirth!
        IaShowAge.text = "Your age is \(personAge)"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        GetAge()
        self.view.endEditing(true)
        return true
        
    }
    }




