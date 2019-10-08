//
//  TextFieldViewController.swift
//  SupSeminar01
//
//  Created by juhyeok on 03/10/2019.
//  Copyright © 2019 juhyeok. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var txtFieldUserID: UITextField!
    @IBOutlet weak var txtFieldUserPW : UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.txtFieldUserID {
            textField.resignFirstResponder()
            self.txtFieldUserPW.becomeFirstResponder()
        }
        textField.resignFirstResponder()
        return true
    }
    
}
