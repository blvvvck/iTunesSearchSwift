//
//  SearchPresenterImplementation.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 10/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

class SearchPresenterImplementation: SearchViewOutput, SearchInteractorOutput, MediaDataSourceDelegate {

    weak var view: SearchViewInput!
    var interactor: SearchInteractorInput!
    var router: SearchRouterInput!
    
    func viewIsReady() {
        view.prepareSearchController()
        view.prepareTableView()
    }
    
    func didUpdateSearchText(with text: String) {
        interactor.getMediaResults(with: text)

    }
    
    func didFinishGettingMediaResults(with result: [MediaCellModel]) {
        view.set(cellModels: result)
        view.reloadTableView()
    }
    
    func viewDidAppear() {
        view.reloadTableView()
    }
    
    func didTapOnCell(with url: URL) {
        router.showPageInSafari(with: url)
    }
}
