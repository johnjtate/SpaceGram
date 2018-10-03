//
//  CustomView.swift
//  SpaceGram
//
//  Created by Trevor Adcock on 8/19/18.
//  Copyright © 2018 Trevor Adcock. All rights reserved.
//

import UIKit

@IBDesignable class CustomView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    @IBInspectable var topGradientColor: UIColor?
    @IBInspectable var bottomGradientColor: UIColor?

    @IBInspectable var gradientIsActive: Bool = false{
        didSet{
            
            guard let topGradientColor = topGradientColor, let bottomGradientColor = bottomGradientColor else {return}
            
            if gradientIsActive {
                let gradient = CAGradientLayer()
                gradient.frame = self.bounds
                gradient.colors = [
                    topGradientColor.cgColor,
                    bottomGradientColor.cgColor
                ]
                gradient.locations = [0.0, 1.0]
                gradient.startPoint = CGPoint(x: 0, y: 0)
                gradient.endPoint = CGPoint(x: 1, y: 1)
                self.layer.insertSublayer(gradient, at: 0)
            }
        }
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
