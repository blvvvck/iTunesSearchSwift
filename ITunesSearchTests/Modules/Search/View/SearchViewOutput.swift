//
//  SearchViewOutput.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

protocol SearchViewOutput {
    
    func viewIsReady()
    func didUpdateSearchText(with text: String)
    func viewDidAppear()

}
