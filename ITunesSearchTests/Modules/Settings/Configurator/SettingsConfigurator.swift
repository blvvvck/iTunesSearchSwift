//
//  SettingsConfigurator.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

class SettingsConfigurator {
    
    static func setupModule(with viewController: SettingsViewController) {
        
        let presenter = SettingsPresenter()
        let interactor = SettingsInteractor()
        let dbManager = DbManagerImplementation()
        let router = SettingsRouterImplementation()
        let alertFactory = AlertFactoryImplementation()
        
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        interactor.dbManager = dbManager
        router.view = viewController
        router.alertFactory = alertFactory
    }
}
