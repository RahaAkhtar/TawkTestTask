//
//  ProfileViewController.swift
//  TawkTestTask
//
//  Created by Muhammad Akhtar on 15/11/2021.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var userID: Int!
    
    let viewModel = ProfileViewModel()
    var githubUser: GithubUser!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
        // Do any additional setup after loading the view.
        self.decorateUI()
        self.LoadingStart()
        
        viewModel.getProfileApi(postId: "\(userID ?? 0)")
        viewModelBinding()
        
    }
    
    func viewModelBinding() {
        viewModel.comentsResponseComes = { response in
            self.LoadingStop()
            guard let user = response else {
                return
            }
            self.githubUser = user
            self.reloadData()
        }
        
        viewModel.errorComes = { msg in
            self.LoadingStop()
            self.alertMessageShow(message: msg?.description ?? "")
        }
    }
    
    func decorateUI() {
        self.title = NavigationBarTitle.kProfileTitle
        tableView.tableFooterView = UIView.init(frame: .zero)
        self.tableView.separatorColor = UIColor.clear
        tableView.register(UINib(nibName: ProfileTableViewCell.className, bundle: nil), forCellReuseIdentifier: ProfileTableViewCell.className)
        
    }
    
    func reloadData() {
        self.tableView.reloadData()
    }

}
