//
//  ShowResultViewController.swift
//  week1Assignment
//
//  Created by Su Win Phyu on 8/9/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit

class ShowResultViewController: UIViewController {
    
    static let identifier = "ShowResultViewController"
    var DOB :String = ""
    var selectedGenderIndex : Int = -1
    
    @IBOutlet weak var lblDOB: UILabel!
    
    @IBOutlet weak var lblGender: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        //gender
        switch selectedGenderIndex {
        case 0:
            lblGender.text = "Male"
            break
        case 1:
            lblGender.text = "Female"
            break
        case 2:
            lblGender.text = "Others"
            break
        default:
            break
        }
        
        lblDOB.text = DOB 
    }

}
