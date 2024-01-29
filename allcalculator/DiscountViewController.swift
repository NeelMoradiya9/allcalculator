//
//  DiscountViewController.swift
//  allcalculator
//
//  Created by Neel  on 09/11/23.
//

import UIKit

class DiscountViewController: UIViewController {
    
    var discountAmount: Double = 0.0
    @IBOutlet weak var pricetext: UITextField!
    
    
    @IBOutlet weak var discounttext: UITextField!
    
    @IBOutlet weak var afterdiscountlabel: UILabel!
    
    @IBOutlet weak var savedamountlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calculatebutton(_ sender: Any) {
        if let originalPrice = Double(pricetext.text ?? ""),
           let discountPercentage = Double(discounttext.text ?? "") {
            let discount = originalPrice * (discountPercentage / 100)
            let discountedPrice = originalPrice - discount
            let savedamount = originalPrice - discountedPrice
            afterdiscountlabel.text = "Discounted Price: \(String(format: "₹%.2f", discountedPrice))"
            savedamountlabel.text = "Saved amount: \(String(format: "₹%.2f", savedamount))"
            discountAmount = discount
        } else {
            afterdiscountlabel.text = "Please enter valid input."
            savedamountlabel.text = "No Saved amoount sorry!"
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func dismisskeyboard(){
        view.endEditing(true)
    }
    
}




