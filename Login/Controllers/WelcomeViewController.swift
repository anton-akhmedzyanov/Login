//
//  WelcomeViewController.swift
//  Login
//
//  Created by Anton Akhmedzyanov on 05.08.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    
    @IBOutlet var welcomeLabel: UILabel!
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(name)!"
    }
}
