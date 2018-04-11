//
//  SearchConfigurator.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 10/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
import UIKit

class SearchConfigurator {
    
    static func setupModule(with viewController: SearchViewController) {
        
        let presenter = SearchPresenterImplementation()
        let dbManager = DbManagerImplementation()
        let networkManager = NetworkManagerImplementation()
        let dataSource = MediaDataSource(presenter)
        let interactor = SearchInteractor()
        let router = SearchRouter()
        
        viewController.presenter = presenter
        viewController.dataSource = dataSource
        
        presenter.view = viewController
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.dbManager = dbManager
        interactor.networkManager = networkManager
        interactor.presenter = presenter
        
        router.view = viewController
    }
}
