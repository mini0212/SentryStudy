//
//  ViewController.swift
//  SentryStudy
//
//  Created by Hailey on 2020/03/19.
//  Copyright © 2020 min_e. All rights reserved.
//

import UIKit
import Sentry

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func errorSend(_ sender: UIButton) {
        Client.shared?.crash()
    }
}

