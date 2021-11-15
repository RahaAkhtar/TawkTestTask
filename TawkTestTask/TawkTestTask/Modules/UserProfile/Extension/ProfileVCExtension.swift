//
//  ProfileExtension.swift
//  TawkTestTask
//
//  Created by Muhammad Akhtar on 15/11/2021.
//

import Foundation
import UIKit

extension ProfileViewController : UITableViewDataSource, UITableViewDelegate
{
    // MARK: - Table view datasource method
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ProfileTableViewCell.className, for: indexPath) as! ProfileTableViewCell
        cell.selectionStyle = .none
        cell.configurCell(obj: self.githubUser)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        return UITableView.automaticDimension
    }
    
}
