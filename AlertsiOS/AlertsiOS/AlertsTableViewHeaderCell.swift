//
//  AlertsTableViewHeaderCell.swift
//  AlertsiOS
//
//  Created by Mitchell Downey on 9/7/15.
//  Copyright (c) 2015 OpinionLab. All rights reserved.
//

import UIKit

class AlertsTableViewHeaderCell: UITableViewCell {
    
    @IBOutlet weak var unreadMessagesText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
