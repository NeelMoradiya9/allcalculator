//
//  MutualFundViewController.swift
//  allcalculator
//
//  Created by Neel  on 09/11/23.
//

import UIKit

class mutualfundcal: UIViewController {
    @IBOutlet weak var monthlyinvestmenttext: UITextField!
    
    @IBOutlet weak var timeperiodtext: UITextField!
    
    @IBOutlet weak var returntext: UITextField!
    
    @IBOutlet weak var resultlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func calculatebtn(_ sender: Any) {
        if let totalInvestmentText = monthlyinvestmenttext.text,
            let expectedReturnText = returntext.text,
            let investmentDurationText = timeperiodtext.text,
            let totalInvestment = Double(totalInvestmentText),
            let expectedReturn = Double(expectedReturnText),
            let investmentDuration = Double(investmentDurationText) {

            let rate = expectedReturn / 100.0
            let futureValue = totalInvestment * pow(1.0 + rate, investmentDuration)
            
            resultlabel.text = "Future Value: \(futureValue)"
        } else {
            resultlabel.text = "Please enter valid values."
        }

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func dismisskeyboard(){
        view.endEditing(true)
    }
}


