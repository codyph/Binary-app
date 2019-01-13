//
//  ViewController.swift
//  Binary-app
//
//  Created by Bailey Aldridge on 13/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var valueEntryTextField: UITextField!
    @IBOutlet weak var binaryBtn: UIButton!
    @IBOutlet weak var decimalBtn: UIButton!
    
    let placeholder = NSAttributedString(string: "Enter a value..", attributes: [NSAttributedString.Key.foregroundColor:#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25), NSAttributedString.Key.font: UIFont.init(name: "Menlo", size: 36.0)!])
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueEntryTextField.attributedPlaceholder = placeholder
        valueEntryTextField.addTarget(self, action: #selector(textFieldTextDidChange), for: .editingChanged)
        enableBtns(enabled: false, alpha: 0.35)
        
        
        
    }
    
    @objc func textFieldTextDidChange () {
        if valueEntryTextField.text == "" {
            enableBtns(enabled: false, alpha: 0.35)
        } else {
            enableBtns(enabled: true, alpha: 1.0)
        }
    }
    
    func enableBtns(enabled: Bool, alpha: CGFloat){
        binaryBtn.isEnabled = enabled
        binaryBtn.alpha = alpha
        decimalBtn.isEnabled = enabled
        decimalBtn.alpha = alpha
    }

    @IBAction func binaryBtnTapped(_ sender: Any) {
        
    }
    
    @IBAction func decimalBtnTapped(_ sender: Any) {
        
    }
    
}

