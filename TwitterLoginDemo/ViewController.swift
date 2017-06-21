//
//  ViewController.swift
//  TwitterLoginDemo
//
//  Created by Chang Li on 2017/6/21.
//  Copyright © 2017年 Chang Li. All rights reserved.
//

import UIKit
import TwitterKit
import TwitterCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if (session != nil) {
                print("signed in as \(session?.userName)");
            } else {
                print("error: \(error?.localizedDescription)");
            }
        })
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

