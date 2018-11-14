//
//  MainViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-23.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit

@IBDesignable extension UIView {
    @IBInspectable var borderColor:UIColor? {
        set {
            layer.borderColor = newValue!.cgColor
        }
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor:color)
            }
            else {
                return nil
            }
        }
    }
    @IBInspectable var borderWidth:CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var cornerRadius:CGFloat {
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
        get {
            return layer.cornerRadius
        }
    }
}

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var qrScanner: UIButton!
    @IBOutlet weak var profile: UIButton!
    @IBOutlet weak var settings: UIButton!
    @IBOutlet weak var loggout: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("view has loaded!")
    }
    
    // QuickScanner Buttons on MainViewController
    @IBAction func qrScannerButton(_ sender: UIButton) {
        print("button pressed")
        self.performSegue(withIdentifier: "qrScannerSegue", sender: self)
    }
    
    // Profile Buttons on MainViewController
    @IBAction func profileButton(_ sender: Any) {
    
    print("Profile Button pressed")
    self.performSegue(withIdentifier: "profileSegue", sender: self)
    }
    
    // Settings Buttons on MainViewController
    @IBAction func settingsButton(_ sender: Any) {
    
    print("Settings Button pressed")
    self.performSegue(withIdentifier: "settingsSegue", sender: self)
    }
    
    @IBAction func loggoutButton(_ sender: Any) {
        print("Log out")
    }
    func createAlert (title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Log Out", style: UIAlertAction.Style.destructive
            , handler: { (action) in
                alert.dismiss(animated: true, completion: nil)
                
        }))
            self.present(alert, animated: true, completion: nil)
        
    }
}

