//
//  ArticleTableViewCell.swift
//  FileManagerHomework
//
//  Created by minea on 12/13/16.
//  Copyright © 2016 minea. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var articleProfile: UIImageView!
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var articleDes: UILabel!
    @IBOutlet weak var articleDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    func customCell(article: Articles){
        cellView.layer.cornerRadius = 5
        imageView?.layer.cornerRadius = 3
        
        articleTitle.text = article.title?.capitalized
        articleDes.text = article.description
        imageView?.kf.setImage(with: URL(string: (article.image?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed))!))
        
        
        // Format Date
        let today = Date()
        let date = article.createDate!
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMddHHmmss"
        let dateObj = dateFormatter.date(from: date)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        var result = formatter.string(from: dateObj!)
        
        if result == formatter.string(for: today) {
            formatter.dateFormat = "HH:mm:ss"
            result = formatter.string(for: dateObj)!
            articleDate.text = result
        } else {
            articleDate.text = result
        }

    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
