//
//  stampCardViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-23.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit
import Firebase

class StampCardViewController: UIViewController {
    
    @IBOutlet weak var stampCardLabel: UILabel!
/*
    @IBOutlet weak var box0: UIButton!
    @IBOutlet weak var box1: UIButton!
    @IBOutlet weak var box2: UIButton!
    @IBOutlet weak var box3: UIButton!
    @IBOutlet weak var box4: UIButton!
    @IBOutlet weak var box5: UIButton!
    @IBOutlet weak var box6: UIButton!
    @IBOutlet weak var box7: UIButton!
    @IBOutlet weak var box8: UIButton!
    @IBOutlet weak var box9: UIButton!
    
    var lunchData = [String]()
    
    var boxOn = UIImage(named: "checkBox")
    var boxOff = UIImage(named: "unCheckBox")
    
    var isBoxClicked: Bool!
    //    var isBoxHidden: Bool!
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Firebase Database Reference
        var ref: DatabaseReference!
        ref = Database.database().reference()
        
        ref.child("users").child("people").setValue("bilal")
        
        
/*
        isBoxClicked = false
        view.backgroundColor = UIColor.white
        
        // Retrieve the post and listenfor changes
        // DatabaseHandle =
            ref?.child("Valfarden").observe(.value, with: { (snappshot) in
            
        // Code to excute when a child i changed.
        // Take a value of the snappshot and added it to lunchData array.
            
        // Try to convert the value of the data to a string.
        let lunch = snappshot.value as? String
            
        if let actualLunch = lunch {
            // Append the data to our lunchData array
            self.lunchData.append(actualLunch)
            // Reload the
            func reloadData() {
                print("OK")
            }
            }
        })
         */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
/*    @IBAction func boxZero(_ sender: UIButton) {
        
        if isBoxClicked == true {
            isBoxClicked = false
        } else {
            isBoxClicked = true
        }
        if isBoxClicked == true {
            box0.setImage(boxOn, for: UIControl.State.normal)
            // self.view.backgroundColor = UIColor.red
            // HIDE the rest of the boxes.
            // box1.isHidden = true
            // box2.isHidden = true
        } else {
            box0.setImage(boxOff, for: UIControl.State.normal)
            // self.view.backgroundColor = UIColor.white
            // HIDE the rest of the boxes.
            // box1.isHidden = false
            // box2.isHidden = false
        }
    }
    */
    
    @IBAction func stampCardBackHome(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
 
    @IBAction func addLunch(_ sender: Any) {
        
    // Post a data to firebase
       
        
    }
}

