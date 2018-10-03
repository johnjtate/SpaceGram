//
//  WelcomeViewController.swift
//  SpaceGram
//
//  Created by DevMountain on 10/3/18.
//  Copyright © 2018 Trevor Adcock. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var spaceGramLabel: HeaderLabel!
    @IBOutlet var backGroundView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        logoImageView.isUserInteractionEnabled = true
        self.logoImageView.translatesAutoresizingMaskIntoConstraints = false
        spaceGramLabel.translatesAutoresizingMaskIntoConstraints = false
        // move the label off the screen so we can have an animation to come in
        UIView.animate(withDuration: 2) {
            self.spaceGramLabel.center.x -= self.view.bounds.width
        }
    }
    
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    var sizeFactor: CGFloat!
    
    @IBAction func logoImageViewTapped(_ sender: Any) {
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .curveEaseInOut], animations: {
            
            self.sizeFactor = self.logoImageView.bounds.size.width/3
            self.logoImageView.bounds.size.width += self.sizeFactor
            self.logoImageView.bounds.size.height += self.sizeFactor
        }) { (true) in
            self.logoImageView.bounds.size.width -= self.sizeFactor
            self.logoImageView.bounds.size.height -= self.sizeFactor
        }
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut], animations: {
            self.logoImageView.transform = CGAffineTransform(scaleX: 100, y: 100)
        }) { (true) in
            self.performSegue(withIdentifier: "toApp", sender: self)
        }
    }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1) {
            sender.alpha = 0
        }
    }
}
