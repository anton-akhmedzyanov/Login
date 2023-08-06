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
    
    private let login = "Anton"
    private let password = "1"

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.name = login
    }
    
    @IBAction func pressedLogin() {
        if userTX.text == "\(login)", paswordTX.text == "\(password)" {
            performSegue(withIdentifier: "showWelcome", sender: .none)
        } else {
            showAlert(with: "OOPS!", and: "Login or password isn't correct")
            paswordTX.text = ""
        }
    }
    
    @IBAction func forgwtInfo(_ sender: UIButton) {
            sender.tag == 0
        ? showAlert(with: "OOPS", and: "login is \(login)") :
            showAlert(with: "OOPS", and: "password is \(password)") 
    }
    
    @IBAction func unwindsegue(_ segue: UIStoryboardSegue) {
        userTX.text = ""
        paswordTX.text = ""
    }
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
}
