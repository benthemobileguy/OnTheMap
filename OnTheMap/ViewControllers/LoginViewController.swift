//
//  ViewController.swift
//  OnTheMap
//
//  Created by Ben Chukwuma on 24/06/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var acitivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        username.text = ""
        password.text = ""
        hideIndicator(acitivityIndicator)
    }
    
    @IBAction func login(_ sender: Any) {
        let user_name = username.text ?? ""
        let pass_word = password.text ?? ""
        if user_name != "" && pass_word != ""{
            showIndicator(acitivityIndicator)
            UdacityClient.login(username: user_name, password: pass_word, completion: handleLoginResponse(success:error:))
        }else{
            showAlert(message: "Please input the required fields", title: "Input Error")
        }
        
    }
    
    @IBAction func signUp(_ sender: Any) {
        UIApplication.shared.open(UdacityClient.Endpoints.signUp.url, options: [:], completionHandler: nil)
    }
    
    func handleLoginResponse(success: Bool, error: Error?) {
        DispatchQueue.main.async {
            self.hideIndicator(self.acitivityIndicator)
            if let error = error{
                DispatchQueue.main.async {
                    self.showAlert(message: error.localizedDescription, title: "Login Error")
                }
                return
            }
            if success {
                self.performSegue(withIdentifier: "login", sender: nil)
            } else {
                self.showAlert(message: "Please enter valid credentials.", title: "Login Error")
            }
        }
    }
    
}

