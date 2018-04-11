//
//  SearchViewController.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 10/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, SearchViewInput{

    @IBOutlet weak var tableView: UITableView!
    var dataSource: MediaDataSourceInput!
    let mediaCellIdentifier = "mediaCell"
    var presenter: SearchViewOutput!
    let mediaCellNibIdentifier = "MediaTableViewCell"
    
    lazy var searchController: UISearchController = {
        return UISearchController(searchResultsController: nil)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsReady()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        presenter.viewDidAppear()
    }
    
    private func registerCell() {
        let mediaCellNib = UINib(nibName: mediaCellNibIdentifier, bundle: nil)
        self.tableView.register(mediaCellNib, forCellReuseIdentifier: mediaCellIdentifier)
    }
    
    func prepareTableView() {
        registerCell()
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.dataSource = dataSource
        tableView.delegate = dataSource
    }
    
    func prepareSearchController() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    func set(cellModels: [MediaCellModel]) {
        dataSource.setCellModels(with: cellModels)
    }
    
    func reloadTableView() {
        tableView.reloadData()
    }
}

extension SearchViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchText = searchController.searchBar.text else { return }
        presenter.didUpdateSearchText(with: searchText)
    }
    
}
