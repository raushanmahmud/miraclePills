//
//  ViewController.swift
//  MiraclePills
//
//  Created by studentas on 14/12/2017.
//  Copyright © 2017 studentas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    
    @IBOutlet weak var pillImg: UIImageView!
    
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var dividerBar: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTxtField: UITextField!
    
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetTxtField: UITextField!
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTxtField: UITextField!
    
    @IBOutlet weak var stateLabel: UILabel!
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var countryLabel: UILabel!
    
    
    @IBOutlet weak var buyNowBtn: UIButton!
    
    @IBOutlet weak var successImg: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
        
        statePicker.isHidden = false
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        
        pillImg.isHidden = true
        
        pillLabel.isHidden = true
        priceLabel.isHidden =  true
        
        dividerBar.isHidden = true
        
        nameLabel.isHidden = true
        nameTxtField.isHidden = true
        
        streetLabel.isHidden = true
        streetTxtField.isHidden = true
        
        cityLabel.isHidden = true
        cityTxtField.isHidden = true
        
        stateLabel.isHidden = true
        
        statePicker.isHidden = true
        
        statePickerBtn.isHidden = true
        
        zipCodeTextField.isHidden = true
        zipCodeLabel.isHidden = true
        
        countryTextField.isHidden = true
        countryLabel.isHidden = true
        
        
        buyNowBtn.isHidden = true
        
        successImg.isHidden = false
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        
        zipCodeLabel.isHidden = false
        zipCodeTextField.isHidden = false
        
        statePicker.isHidden = true
        

    }
}

