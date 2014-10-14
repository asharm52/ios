//
//  EventCardCell.swift
//  Cliq-iOS
//
//  Created by Arjun Sarode on 10/13/14.
//  Copyright (c) 2014 Cliq. All rights reserved.
//

import UIKit

class EventCardCell: UITableViewCell {
    
    
    @IBOutlet weak var eventCardDesc: UILabel!
    @IBOutlet weak var eventCardTags: UILabel!
    @IBOutlet weak var eventCardTime: UILabel!
    @IBOutlet weak var eventCardGroupSize: UILabel!
    @IBOutlet weak var eventCardDist: UILabel!
    @IBOutlet weak var eventCardName: UILabel!
    @IBOutlet weak var eventCardAvatar: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
