//
//  PersonalViewController.swift
//  Login
//
//  Created by Anton Akhmedzyanov on 08.08.2023.
//

import UIKit

final class PersonalViewController: UIViewController {

    //MARK: - IBOutlets
   @IBOutlet var photoImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var proffesionLabel: UILabel!
    @IBOutlet var aboutMeLabel: UILabel!
    
   var person: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = person.person.name
        surnameLabel.text = person.person.surname
        ageLabel.text = person.person.age.formatted()
        proffesionLabel.text = person.person.proffesion
        aboutMeLabel.text = person.person.aboutMe
        
        photoImageView.image = UIImage(named: "IMG_2026")
       
    }
}
