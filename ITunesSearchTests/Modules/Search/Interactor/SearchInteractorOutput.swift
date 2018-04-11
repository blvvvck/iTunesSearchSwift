//
//  SearchInteractorOutput.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 10/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

protocol SearchInteractorOutput {
    
    func didFinishGettingMediaResults(with result: [MediaCellModel])
}
