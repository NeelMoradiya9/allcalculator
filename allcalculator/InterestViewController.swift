//
//  InterestViewController.swift
//  allcalculator
//
//  Created by Neel  on 09/11/23.
//

import UIKit

class InterestViewController: UIViewController {
    
    @IBOutlet weak var principalamount: UITextField!
    
    @IBOutlet weak var totalab: UILabel!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var interesttext: UITextField!
    
    
    @IBOutlet weak var timetext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calculatebtn(_ sender: Any) {
        if let principalAmount = Double(principalamount.text ?? ""),
           let interestRate = Double(interesttext.text ?? ""),
           let timePeriod = Double(timetext.text ?? "") {
            
            let interest = (principalAmount * interestRate * timePeriod) / 100
            let save = interest
            let total = principalAmount + save
            label.text = "Interest: \(String(format: "₹%.2f", interest))"
            totalab.text = "Total Amount: \(String(format: "₹%.2f",total))"
        } else {
            label.text = "Please enter valid input."
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func dismisskeyboard(){
        view.endEditing(true)
    }
}




