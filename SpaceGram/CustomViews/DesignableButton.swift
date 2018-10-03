//
//  DesignableButton.swift
//  SpaceGram
//
//  Created by Trevor Adcock on 8/19/18.
//  Copyright © 2018 Trevor Adcock. All rights reserved.
//

import UIKit

@IBDesignable class DesignableButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0.0{
        didSet{
           self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat = CGFloat(0.0) {
        didSet{
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float = 0.0 {
        didSet{
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize = CGSize(width: 0.0, height: 0.0){
        didSet{
            layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        didSet{
            layer.shadowColor = shadowColor?.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0{
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            layer.borderColor = borderColor.cgColor
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
