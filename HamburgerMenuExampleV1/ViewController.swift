//
//  ViewController.swift
//  HamburgerMenuExampleV1
//
//  Created by AppDev on 18/04/18.
//  Copyright © 2018 Droal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HomeView: UIView!
    @IBOutlet weak var homeViewLeading: NSLayoutConstraint!
    
    @IBOutlet weak var homeViewTrailing: NSLayoutConstraint!
    
    var menuIsVisible = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hamburgerIcontapped(_ sender: UIBarButtonItem) {
        
        
        if !menuIsVisible{
            homeViewLeading.constant = 150
            homeViewTrailing.constant = -150
            menuIsVisible = true
        }
        else{
            homeViewLeading.constant = 0
            homeViewTrailing.constant = 0
            menuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print("The animation is complete!")
        }
    }
    
}

