//
//  ViewController.swift
//  SampleNewsApp
//
//  Created by Yiğit Güleç on 3.04.2022.
//

import UIKit

class NewsViewController: UIViewController, NewsDelegate {
    func reloadTable() {
        tableView.reloadData()
    }
    
    @IBOutlet var tableView: UITableView!
    
    var viewModel: NewsViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Haberler"
        viewModel = NewsViewModel()
        viewModel?.delegate = self
        
        tableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        viewModel?.fetchData {
            tableView.reloadData()
        }
    }
}


