//
//  NewsModel.swift
//  SampleNewsApp
//
//  Created by Yiğit Güleç on 4.04.2022.
//

import Foundation
/*
struct NewsList: Codable {
    let data: [NewsModel]
}

struct NewsModel: Codable {
    let uuid, title, summary, content: String?
    let mainImage: ImageModel?
    let shareURL: String?
}

struct ImageModel: Codable {
    let url: String?
    let height, weight: String?
}
*/

struct NewsModel: Codable {
    let uuid, title, summary, content: String
    let mainImage: MainImage
    let shareURL: String?
    let jsonURL: String?

    enum CodingKeys: String, CodingKey {
        case uuid, title, summary, content
        case mainImage = "main_image"
        case shareURL = "share_url"
        case jsonURL = "json_url"
    }
}

// MARK: - MainImage
struct MainImage: Codable {
    let url: String
    let height, width: Int
}
