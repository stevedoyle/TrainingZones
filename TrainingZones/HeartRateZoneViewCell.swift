//
//  HeartRateZoneViewCell.swift
//  TrainingZones
//
//  Created by Stephen Doyle on 06/11/2015.
//  Copyright © 2015 Stephen Doyle. All rights reserved.
//

import UIKit

class HeartRateZoneViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    
    var hrZone: TrainingZone! {
        didSet {
            nameLabel.text = hrZone.name
            descriptionLabel.text = hrZone.description

            if(hrZone.upper == -1) {
                rangeLabel.text = String(format: "%d+ %@", hrZone.lower, hrZone.unit!)
            } else {
                rangeLabel.text = String(format: "%d - %d %@", hrZone.lower, hrZone.upper, hrZone.unit!)
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
