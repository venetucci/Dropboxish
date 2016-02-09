//
//  FavoritedViewController.swift
//  Dropboxish
//
//  Created by Michelle Harvey on 2/6/16.
//  Copyright © 2016 Michelle Venetucci Harvey. All rights reserved.
//

import UIKit

class FavoritedViewController: UIViewController {

    @IBOutlet weak var favoritedButton: UIButton!
    
    let userDefaults = NSUserDefaults.standardUserDefaults()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let favorited = userDefaults.boolForKey("user_favorited")
        
        favoritedButton.selected = favorited
        
//        if favorited {
//            favoritedButton.selected = true
//        } else {
//            favoritedButton.selected = false
//        }

        // Do any additional setup after loading the view.
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

    @IBAction func buttonDidTap(sender: UIButton) {
        sender.selected = !sender.selected
        
        userDefaults.setBool(sender.selected, forKey: "user_favorited")
    
        userDefaults.synchronize()

    }
}
