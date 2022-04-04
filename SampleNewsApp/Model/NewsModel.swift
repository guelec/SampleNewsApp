//
//  NewsModel.swift
//  SampleNewsApp
//
//  Created by Yiğit Güleç on 4.04.2022.
//

import Foundation

struct NewsModel: Codable {
    let uuid, title, summary, content: String?
    let mainImage: ImageModel?
    let shareURL: String?
}

struct ImageModel: Codable {
    let url: String?
    let height, weight: String?
}
