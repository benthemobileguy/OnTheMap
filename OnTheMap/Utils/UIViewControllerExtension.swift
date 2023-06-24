//
//  UIViewControllerExtension.swift
//  OnTheMap
//
//  Created by Ben Chukwuma on 24/06/2023.
//

import Foundation
import UIKit
extension UIViewController{
    
    // MARK: Show alerts
    
    func showAlert(message: String, title: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertVC, animated: true)
    }
    
    // MARK: Open links in Safari
    
    func openLink(_ url: String) {
        guard let url = URL(string: url), UIApplication.shared.canOpenURL(url) else {
            showAlert(message: "Cannot open link.", title: "Invalid Link")
            return
        }
        UIApplication.shared.open(url, options: [:])
    }
    
    func showIndicator(_ activityIndicator : UIActivityIndicatorView){
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    
    func hideIndicator(_ activityIndicator : UIActivityIndicatorView){
        activityIndicator.isHidden = true
        activityIndicator.stopAnimating()
    }
}
