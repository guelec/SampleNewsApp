//
//  DetailViewController.swift
//  SampleNewsApp
//
//  Created by Yiğit Güleç on 5.04.2022.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet var headerImage: UIImageView!
    @IBOutlet var headerTitle: UILabel!
    @IBOutlet var headerSummary: UILabel!
    @IBOutlet var newsText: UILabel!
    // @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var shareButton: UIButton!

    var data: NewsModel?

    override func loadView() {
        super.loadView()

        headerImage.load(url: URL(string: data?.mainImage.url ?? "")!)
        headerTitle.text = data?.title
        headerSummary.text = data?.summary
        newsText.attributedText = data?.content.htmlToAttributedString
        // scrollView.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let shareButton = UIBarButtonItem(title: "Paylaş", style: .done, target: self, action: #selector(shareButtonPressed))
        navigationItem.rightBarButtonItem = shareButton
    }

    @objc func shareButtonPressed() {
        let urlString = data?.shareURL
        let linkToShare = [urlString]
        let activityController = UIActivityViewController(activityItems: linkToShare, applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
}
