//
//  ResultViewController.swift
//  DirectSend
//
//  Created by juhyeok on 2019/10/12.
//  Copyright © 2019 juhyeok. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var resultEmail : String = ""
    var resultUpdateKind : Bool = false
    var resultUpdateFrequent : Double = 0
    
    @IBOutlet weak var lblResultEmail: UILabel!
    @IBOutlet weak var lblUpdateKind: UILabel!
    @IBOutlet weak var lblUpdateFrequent: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lblResultEmail.text = resultEmail
        
        if(self.resultUpdateKind){
            lblUpdateKind.text = "자동갱신"
        }
        else{
            lblUpdateKind.text = "수동갱신"
        }
        
        lblUpdateFrequent.text = String(Int(resultUpdateFrequent)) + " 분 주기"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBack(_ sender: Any){
        self.dismiss(animated: true)
    }

}
