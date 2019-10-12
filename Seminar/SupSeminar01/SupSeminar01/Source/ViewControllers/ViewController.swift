//
//  ViewController.swift
//  SupSeminar01
//
//  Created by juhyeok on 03/10/2019.
//  Copyright © 2019 juhyeok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgViewCandle: UIImageView!
    //@IBOutlet weak var candleSwitch: UISwitch!
    
    @IBOutlet weak var lblCandleState: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func swithchChanger(_ sender: UISwitch) {
        
        if sender.isOn{
            imgViewCandle.image = UIImage(named: "candle-on")
            lblCandleState.text = "Candle is on"
        }else{
            imgViewCandle.image = UIImage(named: "candle-off")
            lblCandleState.text = "Candle is off"
        }
    }
}

