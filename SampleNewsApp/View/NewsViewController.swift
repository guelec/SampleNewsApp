//
//  ViewController.swift
//  SampleNewsApp
//
//  Created by Yiğit Güleç on 3.04.2022.
//

import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Deneme"
        
        tableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}
