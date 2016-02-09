//
//  FavoritesViewController.swift
//  Dropboxish
//
//  Created by Michelle Harvey on 2/8/16.
//  Copyright © 2016 Michelle Venetucci Harvey. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {

    @IBOutlet weak var emptyImageView: UIImageView!
    @IBOutlet weak var favoritedImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
//        favoritedImageView.hidden = true
//        emptyImageView.hidden = false
        
        let favorited = NSUserDefaults.standardUserDefaults().boolForKey("user_favorited")
        if favorited {
            favoritedImageView.hidden = false
            emptyImageView.hidden = true
        } else {
            favoritedImageView.hidden = true
            emptyImageView.hidden = false
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
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

}
