//
//  SchoolResultViewController.swift
//  allcalculator
//
//  Created by Neel  on 09/11/23.
//

import UIKit

class SchoolResultViewController: UIViewController {
    
    @IBOutlet weak var totalmarkstext: UITextField!
    
    @IBOutlet weak var yourmarkstext: UITextField!
    
    @IBOutlet weak var resultlabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func calculatebutton(_ sender: Any) {
        if let totalMarksText = totalmarkstext.text,
           let yourMarksText = yourmarkstext.text,
           let totalMarks = Double(totalMarksText),
           let yourMarks = Double(yourMarksText) {
            let percentage = (yourMarks / totalMarks) * 100
            resultlabel.text = String(format: "Percentage: %.2f%%", percentage)
        } else {
            resultlabel.text = "Invalid input"
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func dismisskeyboard(){
        view.endEditing(true)
    }
}

