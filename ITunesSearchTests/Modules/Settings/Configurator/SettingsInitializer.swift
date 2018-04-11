//
//  SettingsInitializer.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

class SettingsInitializer: NSObject {
   
    @IBOutlet weak var viewController: SettingsViewController!
    
    override func awakeFromNib() {
        
        let _ = SettingsConfigurator.setupModule(with: viewController)
    }
}
