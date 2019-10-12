//
//  SegmentViewController.swift
//  SupSeminar01
//
//  Created by juhyeok on 03/10/2019.
//  Copyright © 2019 juhyeok. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController {

    @IBOutlet weak var segDirection: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ResultViewController
        
        vc.recivedSegIndex = segDirection.selectedSegmentIndex
    }

}
