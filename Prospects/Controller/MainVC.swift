//
//  MainVC.swift
//  Prospects
//
//  Created by Dan Lindsay on 2018-02-05.
//  Copyright © 2018 Dan Lindsay. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTextField: CurrencyTextField!
    @IBOutlet weak var priceTextField: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var clearCalcBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calculateBtn.setTitle("Calculate", for: .normal)
        calculateBtn.titleLabel?.font = UIFont(name: "Menlo", size: 45)
        
        calculateBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateBtn.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calculateBtn
        priceTextField.inputAccessoryView = calculateBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate() {
        if let wageTxt = wageTextField.text , let priceTxt = priceTextField.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorBtnWasPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTextField.text = ""
        priceTextField.text = ""
    }
    


}

