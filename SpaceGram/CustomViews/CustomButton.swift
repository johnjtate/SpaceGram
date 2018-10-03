//
//  CustomButton.swift
//  SpaceGram
//
//  Created by Trevor Adcock on 8/19/18.
//  Copyright © 2018 Trevor Adcock. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        if let titleLabel = self.titleLabel{
           titleLabel.font = UIFont(name: "Avenir Next", size: 24)
            titleLabel.adjustsFontSizeToFitWidth = true
            titleLabel.numberOfLines = 1
            titleLabel.minimumScaleFactor = 0.36
            self.setTitleColor(.white, for: .normal)
        }
        
        self.backgroundColor = UIColor.white
        
        self.layer.shadowRadius = 2
        self.layer.shadowOpacity = 0.5
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 2.0
        
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 5
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
