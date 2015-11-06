//
//  PowerZoneViewCell.swift
//  TrainingZones
//
//  Created by Stephen Doyle on 06/11/2015.
//  Copyright © 2015 Stephen Doyle. All rights reserved.
//

import UIKit

class PowerZoneViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    
    var powerZone: TrainingZone! {
        didSet {
            nameLabel.text = powerZone.name
            descriptionLabel.text = powerZone.description
            if(powerZone.upper == -1) {
                rangeLabel.text = String(format: "%d+ %@", powerZone.lower, powerZone.unit!)
            } else {
                rangeLabel.text = String(format: "%d - %d %@", powerZone.lower, powerZone.upper, powerZone.unit!)
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
