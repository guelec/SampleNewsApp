//
//  NewsViewController+TableView.swift
//  SampleNewsApp
//
//  Created by Yiğit Güleç on 4.04.2022.
//

import Foundation
import UIKit

extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel?.news?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? NewsTableViewCell {
            cell.newsTitle.text = self.viewModel?.news?[indexPath.row].title
            cell.newsSubtitle.text = self.viewModel?.news?[indexPath.row].summary
            cell.newsImage.load(url: URL(string: self.viewModel?.news?[indexPath.row].mainImage.url ?? "")!)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    
}
