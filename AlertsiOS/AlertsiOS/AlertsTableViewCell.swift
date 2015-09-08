//
//  TableViewCell.swift
//  AlertsiOS
//
//  Created by Mitchell Downey on 7/23/15.
//  Copyright (c) 2015 OpinionLab. All rights reserved.
//

import UIKit

class AlertsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var emailSubject: UILabel!
    @IBOutlet weak var dateTime: UILabel!
    @IBOutlet weak var notificationIcon: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
