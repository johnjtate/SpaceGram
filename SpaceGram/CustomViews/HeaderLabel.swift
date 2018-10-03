//
//  HeaderLabel.swift
//  SpaceGram
//
//  Created by Trevor Adcock on 8/19/18.
//  Copyright © 2018 Trevor Adcock. All rights reserved.
//

import UIKit

class HeaderLabel: UILabel {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.font = UIFont(name: "Avenir Next", size: 90)
        self.adjustsFontSizeToFitWidth = true
        self.minimumScaleFactor = 0.36
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
