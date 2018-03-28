//
//  ListViewController.swift
//  Coding
//
//  Created by Arifin Firdaus on 3/28/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    internal var items = Item.getItems()
    private let searchController = UISearchController(searchResultsController: nil)
    
    var filteredCandies = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.shadowImage = UIImage()
        setupSearchController()
        setupCell()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        // searchController.delegate = self
        
        // Setup the Search Controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        
    }
    
    private func setupCell() {
        let nib = UINib(nibName: "ListCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "list_cell")
    }
    
    private func setupSearchController() {
        if #available(iOS 11.0, *) {
            navigationItem.searchController = searchController
        } else {
            navigationItem.titleView = searchController.searchBar
        }
    }
    
    
    // MARK: - Private instance methods
    
    private func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        if searchText == "" {
            items = Item.getItems()
            tableView.reloadData()
        } else {
            print("filterContentForSearchText - else - \(searchText)")
            var filteredItems = [Item]()
            for item in items {
                if item.title.lowercased().contains(searchText.lowercased()) {
                    filteredItems.append(item)
                }
            }
            items = filteredItems
            tableView.reloadData()
        }
    }
    
    private func searchBarIsEmpty() -> Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    private func isFiltering() -> Bool {
        let searchBarScopeIsFiltering = searchController.searchBar.selectedScopeButtonIndex != 0
        return searchController.isActive && (!searchBarIsEmpty() || searchBarScopeIsFiltering)
    }
    
}


// MARK: - UITableViewDataSource
extension ListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "list_cell", for: indexPath) as! ListCell
        cell.dataSource = items[indexPath.row]
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 112.0
    }
}

// MARK: - UISearchBarDelegate
extension ListViewController: UISearchBarDelegate {
    // MARK: - UISearchBar Delegate
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
    }
}

extension ListViewController: UISearchResultsUpdating {
    
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        guard let searchedText = searchBar.text else { return }
        print(searchedText)
        filterContentForSearchText(searchedText, scope: "")
    }
}





