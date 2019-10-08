//
//  ResultViewController.swift
//  SupSeminar01
//
//  Created by juhyeok on 03/10/2019.
//  Copyright © 2019 juhyeok. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var recivedSegIndex : Int = 0
    
    @IBOutlet weak var lblSegResult: UILabel!
    @IBOutlet weak var segDirection: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segDirection.selectedSegmentIndex = recivedSegIndex
        
        if(recivedSegIndex == 0){
            self.lblSegResult.text = segDirection.titleForSegment(at: 0)
        }
        else{
            self.lblSegResult.text = segDirection.titleForSegment(at: 1)
        }
    }
    

}
