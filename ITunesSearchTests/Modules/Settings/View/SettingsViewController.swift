//
//  SettingsViewController.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, SettingsViewInput {
    
    @IBOutlet weak var deviceSegmentedControl: UISegmentedControl!
    @IBOutlet weak var countOfObjectsTextField: UITextField!
    @IBOutlet weak var typePicker: UIPickerView!
    var presenter: SettingsViewOutput!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewIsReady()
    }

    func preparePickerView() {
        typePicker.delegate = self
        typePicker.dataSource = self
    }

    
    func setMediaType(with typeIndex: Int) {
        typePicker.selectRow(typeIndex, inComponent: 0, animated: true)
    }
    
    func setDeviceType(with typeIndex: Int) {
        deviceSegmentedControl.selectedSegmentIndex = typeIndex
    }
    
    func setCountOfObjects(with count: String) {
        countOfObjectsTextField.text = count
    }
    
    @IBAction func saveSettings(_ sender: UIButton) {
        presenter.saveSettings(with: Int(typePicker.selectedRow(inComponent: 0)), and: deviceSegmentedControl.selectedSegmentIndex, and: countOfObjectsTextField.text!)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Media.allMedia().count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Media.allMedia()[row].rawValue
    }
}
