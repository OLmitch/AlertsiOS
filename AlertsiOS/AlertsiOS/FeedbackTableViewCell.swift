//
//  FeedbackTableViewCell.swift
//  AlertsiOS
//
//  Created by Mitchell Downey on 8/31/15.
//  Copyright (c) 2015 OpinionLab. All rights reserved.
//

import UIKit

class FeedbackTableViewCell: UITableViewCell {

    @IBOutlet weak var comments: UILabel!
    @IBOutlet weak var dateTime: UILabel!
    @IBOutlet weak var referer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
