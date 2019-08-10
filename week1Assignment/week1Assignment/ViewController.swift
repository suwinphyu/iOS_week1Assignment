//
//  ViewController.swift
//  week1Assignment
//
//  Created by Su Win Phyu on 8/9/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    private var datePicker: UIDatePicker?
    @IBOutlet weak var tfDOB: UITextField!
    
    var selectedGender: Int = -1

   
   
    @IBAction func scGender(_ sender: UISegmentedControl) {
        selectedGender = sender.selectedSegmentIndex
    }
    
  
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(self.selectDate(datePicker:)), for:.valueChanged)
        tfDOB.inputView = datePicker
        
        
    }
    
    @objc func selectDate(datePicker: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        tfDOB.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }

    
    
  
    
    @IBAction func btnRegister(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: ShowResultViewController.identifier) as! ShowResultViewController
        viewcontroller.DOB = tfDOB.text ?? ""
        viewcontroller.selectedGenderIndex = selectedGender
        self.present(viewcontroller, animated: true, completion: nil)
        
    }
}


