//
//  ViewController.swift
//  DirectSend
//
//  Created by juhyeok on 2019/10/12.
//  Copyright © 2019 juhyeok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    

    @IBOutlet weak var txtFieldEmail: UITextField!
    
    @IBOutlet weak var lblUpdateKind: UILabel!
    @IBOutlet weak var swchUpdateKind: UISwitch!
    
    @IBOutlet weak var lblUpdateFrequent: UILabel!
    @IBOutlet weak var stprUpdateFrequent: UIStepper!
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        lblUpdateFrequent.text = String(Int(self.stprUpdateFrequent.value)) + " 분 주기"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onSubmit(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController
            else{
            return
        }
        
        rvc.resultEmail = self.txtFieldEmail.text!
        rvc.resultUpdateKind = self.swchUpdateKind.isOn
        rvc.resultUpdateFrequent = self.stprUpdateFrequent.value
        
        self.present(rvc, animated: true)
    }
    
    @IBAction func swchChanged(_ sender: UISwitch) {
        if(sender.isOn){
            self.lblUpdateKind.text = "자동갱신"
        }else{
            self.lblUpdateKind.text = "수동갱신"
        }
    }
    
}

