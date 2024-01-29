//
//  ViewController.swift
//  allcalculator
//
//  Created by Neel  on 09/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btn(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "allcalculatorViewController")
        as! allcalculatorViewController
        navigationController?.pushViewController(x, animated:   true)
    }
    
}

