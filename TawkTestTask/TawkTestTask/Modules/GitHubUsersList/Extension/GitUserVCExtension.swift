//
//  GitUserVCExtension.swift
//  TawkTestTask
//
//  Created by Muhammad Akhtar on 15/11/2021.
//

import Foundation
import UIKit

extension GitUserViewController : UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating
{
    
    
    // MARK: - Table view datasource method
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.className, for: indexPath) as! UserTableViewCell
        cell.selectionStyle = .none
        cell.configurCell(obj: self.filteredData[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.searchController.searchBar.resignFirstResponder()
        let obj = self.filteredData[indexPath.row]
        Router.shared.openProfileViewController(userId: obj.id, controller: self)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        return UITableView.automaticDimension
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchController.searchBar.text {
            if searchText.isEmpty {
                self.filteredData = self.postList
            } else {
                self.filteredData = self.postList.filter({$0.login.lowercased().range(of: searchText.lowercased()) != nil})
            }
            tableView.reloadData()
        }
    }
    
}
