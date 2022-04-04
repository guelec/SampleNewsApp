//
//  NewsViewModel.swift
//  SampleNewsApp
//
//  Created by Yiğit Güleç on 4.04.2022.
//

import Foundation

class NewsViewModel: NSObject {
    private var service: ServiceManager?
    var news: [NewsModel]?
    var delegate: NewsDelegate?

    override init() {
        super.init()
        self.service = ServiceManager()
    }

    func fetchData(completion: () -> Void) {
        service?.getNews(url: URL(string: "http://www.mocky.io/v2/59cc13f726000062106b773d")!, completionHandler: { resp in
            self.news = resp
            self.delegate?.reloadTable()
        })
    }
}

protocol NewsDelegate {
    func reloadTable()
}
