//
//  allcalculatorViewController.swift
//  allcalculator
//
//  Created by Neel  on 09/11/23.
//

import UIKit

class allcalculatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    

    @IBAction func button1(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "mutualfundcal")
        as! mutualfundcal
        navigationController?.pushViewController(x, animated:   true)
    }
    
    
    @IBAction func button2(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "InterestViewController")
        as! InterestViewController
        navigationController?.pushViewController(x, animated:   true)
    }
    
    
    
    @IBAction func button3(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "DiscountViewController")
        as! DiscountViewController
        navigationController?.pushViewController(x, animated:   true)
    }
    
    
    @IBAction func button4(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "emiviewcon")
        as! emiviewcon
        navigationController?.pushViewController(x, animated:   true)
    }
    
    @IBAction func button5(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "SchoolResultViewController")
        as! SchoolResultViewController
        navigationController?.pushViewController(x, animated:   true)
    }
    
    
    @IBAction func button6(_ sender: Any) {
        let x = storyboard?.instantiateViewController(identifier: "SquareorHourViewController")
        as! SquareorHourViewController
        navigationController?.pushViewController(x, animated:   true)
    }
   
    
}
