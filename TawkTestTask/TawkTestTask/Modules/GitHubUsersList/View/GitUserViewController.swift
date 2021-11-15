//
//  GitUserViewController.swift
//  TawkTestTask
//
//  Created by Muhammad Akhtar on 15/11/2021.
//

import UIKit

class GitUserViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = GitUserViewModel()
    var postList:[GithubUserListElement] = [GithubUserListElement]()
    var filteredData: [GithubUserListElement]!
    var searchController: UISearchController!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
    }
    
    func viewModelBinding() {
        viewModel.responseComes = { response in
            self.LoadingStop()
            guard let list = response else {
                return
            }
            self.postList = list
            self.filteredData = list
            self.reloadData()
            self.searchConterillerInit()
        }
        
        viewModel.errorComes = { msg in
            self.LoadingStop()
            self.alertMessageShow(message: msg?.description ?? "")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.decorateUI()
        api()
    }
    
    func api()  {
        self.LoadingStart()
        viewModel.getUserApi()
        viewModelBinding()
    }
    
    func decorateUI() {
        
        self.title = NavigationBarTitle.kUsersTitle
        
        tableView.tableFooterView = UIView.init(frame: .zero)
        self.tableView.separatorColor = UIColor.clear
        tableView.register(UINib(nibName: UserTableViewCell.className, bundle: nil), forCellReuseIdentifier: UserTableViewCell.className)
    }
    
    func reloadData() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.reloadData()
    }

    func searchConterillerInit() {
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
    
        searchController.obscuresBackgroundDuringPresentation = false
        
        searchController.searchBar.sizeToFit()
        tableView.tableHeaderView = searchController.searchBar
        
        definesPresentationContext = true
    }

}
