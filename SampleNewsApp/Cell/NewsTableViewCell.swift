//
//  NewsCellTableViewCell.swift
//  SampleNewsApp
//
//  Created by Yiğit Güleç on 4.04.2022.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    @IBOutlet var newsImage: UIImageView!
    @IBOutlet var newsTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
