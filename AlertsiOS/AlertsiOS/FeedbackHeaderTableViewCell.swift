//
//  FeedbackHeaderTableViewCell.swift
//  AlertsiOS
//
//  Created by Mitchell Downey on 8/31/15.
//  Copyright (c) 2015 Mitchell Downey. All rights reserved.
//

import UIKit

class FeedbackHeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var emailSubject: UILabel!
    @IBOutlet weak var dateTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
