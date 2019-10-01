//
//  ViewController.swift
//  25th_Assignment_01
//
//  Created by juhyeok on 30/09/2019.
//  Copyright © 2019 juhyeok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblAppName: UILabel!
    @IBOutlet weak var btnHeart: UIButton!
    @IBOutlet weak var lblLike: UILabel!
    
    
    
    let emptyHeart = UIImage(named: "empty_heart")
    let fullHeart = UIImage(named: "full_heart")
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func heartBtnClick(_ sender: Any) {
       
        let heartBtn = sender as! UIButton
        
        heartBtn.isSelected = !heartBtn.isSelected
        
        if(heartBtn.isSelected){
            btnHeart.setImage(emptyHeart, for: .normal)
            lblLike.isHidden = true
        }else{
            btnHeart.setImage(fullHeart, for: .normal)
            lblLike.isHidden = false
        }
        
    }
}

