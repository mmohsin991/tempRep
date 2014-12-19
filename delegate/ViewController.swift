//
//  ViewController.swift
//  delegate
//
//  Created by Mohsin on 18/12/2014.
//  Copyright (c) 2014 Mohsin. All rights reserved.
//

// another chage here

// 3rd change
import UIKit



class ViewController: UIViewController, myDel {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "categorySeg" {
            let desVC = segue.destinationViewController as categoryVC
            desVC.delegate = self
        }

    }

    @IBAction func gotoCategory(sender: AnyObject) {
        performSegueWithIdentifier("categorySeg", sender: self)
    }
    
    
    func doSome(myVC: UIViewController, pushVC: UIViewController) {
        myVC.navigationController?.popViewControllerAnimated(false)
        
        self.navigationController?.pushViewController(pushVC, animated: true)
    }
}

