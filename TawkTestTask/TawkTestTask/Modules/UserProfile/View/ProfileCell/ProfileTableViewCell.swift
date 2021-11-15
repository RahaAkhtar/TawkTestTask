//
//  ProfileTableViewCell.swift
//  TawkTestTask
//
//  Created by Muhammad Akhtar on 15/11/2021.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configurCell(obj:GithubUser) {
        // if model contains opention value then we have to safly unbind them via if let or guard statment
        //self.titleLabel?.text = obj.login
        //self.bodyLabel?.text = obj.id.description
    }
    
}
