//
//  ViewController.swift
//  login n password
//
//  Created by Michael Sidoruk on 29/11/2018.
//  Copyright © 2018 Michael Sidoruk. All rights reserved.
//

import UIKit

let username = "user"
let password = "123"

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        guard let secondVC = destination as? SecondViewController else { return }
        
        if segue.identifier == "firstSegue" {
            if userTextField.text == username && passwordTextField.text == password {
                secondVC.text = userTextField.text
            } else if userTextField.text != username {
                secondVC.text = "Your login isn't correct"
            } else {
                secondVC.text = "Your password isn't correct"
            }
        } else if segue.identifier == "secondSegue" {
            secondVC.text = "forgot your user name?"
        } else if segue.identifier == "thirdSegue" {
             secondVC.text = "forgot your password?"
        }
    }
    
    
    // test unwind
    
    @IBAction func unwind(unwindSegue: UIStoryboardSegue) {
    
    }
    
}

