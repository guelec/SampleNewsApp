//
//  ServiceManager.swift
//  SampleNewsApp
//
//  Created by Yiğit Güleç on 4.04.2022.
//

import Foundation

class ServiceManager {
    func getNews(url: URL, completionHandler: @escaping ([NewsModel]) -> ()) {
        let dataTask = URLSession.shared.dataTask(with: url) { data, _, err in
            
            if err == nil, data != nil {
                do {
                    let decoder = JSONDecoder()
                    let list = try decoder.decode([NewsModel].self, from: data!)
                    
                    DispatchQueue.main.async {
                        completionHandler(list)
                    }
                } catch {
                    print("error")
                }
            }
        }
        dataTask.resume()
    }
}
