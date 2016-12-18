//
//  HomeTableViewCell.swift
//  FileManagerHomework
//
//  Created by minea on 12/13/16.
//  Copyright © 2016 minea. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    //Mark IBOutlet
    @IBOutlet weak var articleDescritptionLabel: UILabel!
    @IBOutlet weak var articleCreatedDateLabel: UILabel!
    @IBOutlet weak var articleTitleLabel: UILabel!
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var cellView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func customCell() {
        cellView.layer.cornerRadius = 5
        imageView?.layer.cornerRadius = 2
    
    }
}
