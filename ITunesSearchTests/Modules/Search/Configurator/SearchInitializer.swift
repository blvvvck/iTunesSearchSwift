//
//  SearchInitializer.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 10/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import UIKit

class SearchInitializer: NSObject {
    
    @IBOutlet weak var viewController: SearchViewController!
    
    override func awakeFromNib() {
        
        let _ = SearchConfigurator.setupModule(with: viewController)
    }
}
