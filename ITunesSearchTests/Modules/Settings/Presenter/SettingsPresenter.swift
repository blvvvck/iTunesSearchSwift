//
//  SettingsPresenter.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

class SettingsPresenter: SettingsViewOutput, SettingsInteractorOutput {
  
    weak var view: SettingsViewInput!
    var interactor: SettingsInteractorInput!
    var router: SettingsRouter!
    let errorMessage = "Заполните все поля"
    
    func viewIsReady() {
        interactor.loadSettings()
        view.preparePickerView()
    }
    
    func didFinishGettingSavedSettings(with model: SettingsModel) {
        view.setMediaType(with: model.mediatypeIndex)
        view.setDeviceType(with: model.deviceTypeIndex)
        view.setCountOfObjects(with: model.countOfObjects)
    }
    
    func saveSettings(with mediaTypeIndex: Int, and deviceTypeIndex: Int, and countOfObjects: String) {
        if countOfObjects == "" {
            router.showAlert(with: errorMessage)
        } else {
            interactor.saveSettings(with: mediaTypeIndex, and: deviceTypeIndex, and: countOfObjects)
        }
    }
}
