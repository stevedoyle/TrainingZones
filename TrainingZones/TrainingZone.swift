//
//  TrainingZone.swift
//  TrainingZones
//
//  Created by Stephen Doyle on 06/11/2015.
//  Copyright © 2015 Stephen Doyle. All rights reserved.
//

import UIKit

struct TrainingZone {
    var name: String?
    var description: String?
    var unit: String?
    var lower: Int
    var upper: Int
    
    init(name: String?, description: String?, unit: String?, lower: Int, upper: Int) {
        self.name = name
        self.description = description
        self.unit = unit
        self.lower = lower
        self.upper = upper
    }
}

