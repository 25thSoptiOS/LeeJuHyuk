//
//  ViewController.swift
//  HelloWorld
//
//  Created by juhyeok on 28/09/2019.
//  Copyright © 2019 juhyeok. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {
    
    @IBOutlet weak var startLbl: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeStartLbl(_ sender: Any) {
        self.startLbl.text = "SOPT !!"
        self.startLbl.backgroundColor = #colorLiteral(red: 0.9773178697, green: 0.5871958137, blue: 1, alpha: 1)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
    }

}

