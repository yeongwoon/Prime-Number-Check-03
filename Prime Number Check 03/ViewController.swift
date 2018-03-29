//
//  ViewController.swift
//  Prime Number Check 03
//
//  Created by D7703_21 on 2018. 3. 29..
//  Copyright © 2018년 D7703_21. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblP: UILabel!
    @IBOutlet weak var txtP: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btC(_ sender: Any) {
        let number = Int(txtP.text!)
        var isPrime = true
        if number! == 1{
            isPrime = false
        }
        if number! != 1 && number! != 2 {
            for i in 2 ..< number! {
                if number! % i == 0{
                    isPrime = false
                }
            }
        }
        if isPrime{
            lblP.text = "Prime Number"
        } else{
            lblP.text = "Not Prime Number"
            
        }
        
        
    }

    @IBAction func btnR(_ sender: Any) {
        txtP.text = ""
        lblP.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        txtP.resignFirstResponder()
        return true
    }


}

