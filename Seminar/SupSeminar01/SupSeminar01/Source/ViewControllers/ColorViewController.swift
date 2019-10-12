//
//  ColorViewController.swift
//  SupSeminar01
//
//  Created by juhyeok on 03/10/2019.
//  Copyright © 2019 juhyeok. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func updateColor(_ sender: UISlider) {
        self.view.backgroundColor = UIColor.init(
            red: CGFloat(self.sliderRed.value),
            green: CGFloat(self.sliderGreen.value),
            blue: CGFloat(self.sliderBlue.value),
            alpha: 1.0)
    }
}
