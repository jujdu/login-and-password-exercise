//
//  SecondViewController.swift
//  login n password
//
//  Created by Michael Sidoruk on 29/11/2018.
//  Copyright © 2018 Michael Sidoruk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var text: String!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
