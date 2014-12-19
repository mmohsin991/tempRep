//
//  categoryVC.swift
//  delegate
//
//  Created by Mohsin on 18/12/2014.
//  Copyright (c) 2014 Mohsin. All rights reserved.
//

import UIKit

protocol myDel {
    func doSome(myVC: UIViewController, pushVC: UIViewController)
}

class categoryVC: UIViewController {
    var delegate: myDel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touchABC(sender: AnyObject) {
        let abc = self.storyboard?.instantiateViewControllerWithIdentifier("abcID") as abcVC
        delegate.doSome(self, pushVC: abc)
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
