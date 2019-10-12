//
//  ColorSelectViewController.swift
//  SecondSeminar
//
//  Created by juhyeok on 2019/10/12.
//  Copyright © 2019 juhyeok. All rights reserved.
//

import UIKit

class ColorSelectViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destination = segue.destination
        let button = sender as! UIButton
        
        destination.title = button.titleLabel?.text
        destination.view.backgroundColor = button.titleLabel?.textColor
    }
}
