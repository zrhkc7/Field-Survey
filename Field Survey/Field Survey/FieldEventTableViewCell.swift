//
//  FieldEventTableViewCell.swift
//  Field Survey
//
//  Created by Zach Hogan on 10/30/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class FieldEventTableViewCell: UITableViewCell {

    
    @IBOutlet weak var fieldIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
