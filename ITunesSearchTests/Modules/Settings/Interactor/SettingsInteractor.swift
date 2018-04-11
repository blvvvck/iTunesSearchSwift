//
//  SettingsInteractor.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

class SettingsInteractor: SettingsInteractorInput {
 
    weak var presenter: SettingsInteractorOutput!
    var dbManager: DbManager!
    
    func loadSettings() {
        guard let model = dbManager.getDataFromDB() else { return }
        presenter.didFinishGettingSavedSettings(with: model)
    }
    
    func saveSettings(with mediaTypeIndex: Int, and deviceTypeIndex: Int, and countOfObjects: String) {
        let model = SettingsModel(value: ["mediatypeIndex": mediaTypeIndex, "deviceTypeIndex": deviceTypeIndex, "countOfObjects": countOfObjects ])
        dbManager.addData(object: model)
    }
}
