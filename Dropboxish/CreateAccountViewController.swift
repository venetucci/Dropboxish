//
//  CreateAccountViewController.swift
//  Dropboxish
//
//  Created by Michelle Harvey on 1/26/16.
//  Copyright © 2016 Michelle Venetucci Harvey. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordOne: UIImageView!
    @IBOutlet weak var passwordTwo: UIImageView!
    @IBOutlet weak var passwordThree: UIImageView!
    @IBOutlet weak var passwordFour: UIImageView!
    
    @IBOutlet weak var createButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideAllPasswords()
        createButton.enabled = false
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func hideAllPasswords() {
        passwordOne.alpha = 0
        passwordTwo.alpha = 0
        passwordThree.alpha = 0
        passwordFour.alpha = 0
    }
    
    
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        if let count = passwordField.text?.characters.count {
            hideAllPasswords()
            switch count {
            case 0:
                passwordOne.alpha = 0
            case 1...2:
                passwordOne.alpha = 1
            case 3...4:
                passwordTwo.alpha = 1
            case 5...7:
                passwordThree.alpha = 1
            default:
                passwordFour.alpha = 1
            }
            
            if count > 0 {
                createButton.enabled = true
            } else {
                createButton.enabled = false
            }
            
            print("\(createButton.enabled)")
            
//            if count > 0 && count < 2 {
//                passwordOne.alpha = 1
//            } else if count >= 2 && count < 4 {
//                passwordTwo.alpha = 1
//            } else if count >= 4 && count < 6 {
//                passwordThree.alpha = 1
//            } else if count >= 6 && count < 8 {
//                passwordFour.alpha = 1
//            } else if count >= 8 {
//                passwordFour.alpha = 1
//            } else if count == 0 {
//                passwordOne.alpha = 0
//            }
        }
    }

    @IBAction func backButtonDidPress(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}
