//
//  EMIViewController.swift
//  allcalculator
//
//  Created by Neel  on 09/11/23.
//

import UIKit

class emiviewcon: UIViewController {
    @IBOutlet weak var loanamounttext: UITextField!
    @IBOutlet weak var intrestratetext: UITextField!
    @IBOutlet weak var timetext: UITextField!
    @IBOutlet weak var intrerestamounttext: UILabel!
    @IBOutlet weak var totalinteresttext: UILabel!
    @IBOutlet weak var totalpayableamounttext: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func calculatebtn(_ sender: Any) {
        
        if let loanAmount = Double(loanamounttext.text ?? ""),
           let interestRate = Double(intrestratetext.text ?? ""),
           let loanTenure = Double(timetext.text ?? "") {
            let monthlyInterestRate = interestRate / 12 / 100
            let numberOfMonths = loanTenure * 12
            let emi = (loanAmount * monthlyInterestRate) / (1 - pow(1 + monthlyInterestRate, -numberOfMonths))
            let totalPayable = emi * numberOfMonths
            let totalInterest = totalPayable - loanAmount
            
            intrerestamounttext.text = String(format: "₹%.2f", (loanAmount * monthlyInterestRate))
            totalinteresttext.text = String(format: "₹%.2f", totalInterest)
            totalpayableamounttext.text = String(format: "₹%.2f", totalPayable)
        } else {
            intrerestamounttext.text = ""
            totalinteresttext.text = ""
            totalpayableamounttext.text = ""
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func dismisskeyboard(){
        view.endEditing(true)
    }
}


