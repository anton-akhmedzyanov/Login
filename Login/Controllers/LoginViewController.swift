//
//  ViewController.swift
//  Login
//
//  Created by Anton Akhmedzyanov on 05.08.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var userTX: UITextField!
    @IBOutlet var paswordTX: UITextField!
    
    private let login = User.getPerson()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabbarVC = segue.destination as? UITabBarController else { return }
        guard let viewcontrollers = tabbarVC.viewControllers else { return }
        
        for viewcontroller in viewcontrollers {
            if let welcomeVC = viewcontroller as? WelcomeViewController {
                welcomeVC.name = login.login
            } else if let navigationVC = viewcontroller as? UINavigationController {
                guard let personalVC = navigationVC.topViewController as? PersonalViewController else { return }
                personalVC.title = login.login
                personalVC.person = login
            }
        }
    }
    
  //MARK: - IBActions
    @IBAction func pressedLogin() {
        if userTX.text == login.login, paswordTX.text == login.password.formatted() {
            performSegue(withIdentifier: "showTabbar", sender: .none)
        } else {
            showAlert(with: "Error", and: "Login or Password isn't correct")
            paswordTX.text = ""
        }
    }
    
    @IBAction func showPersonalInfo(_ sender: UIButton) {
            sender.tag == 0 ?
        showAlert(with: "OOPS", and: "Login is \(login.login)")
        :showAlert(with: "OOPS", and: "Password is \(login.password)")
    }
    
    @IBAction func unwindsegue(segue: UIStoryboardSegue){
        userTX.text = ""
        paswordTX.text = ""
    }
}
//MARK: - Extension
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let alertOk = UIAlertAction(title: "OK", style: .default)
        alert.addAction(alertOk)
        present(alert, animated: true)
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

