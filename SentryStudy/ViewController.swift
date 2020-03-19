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
        let param: [String: String] = [
            "name": "min_e",
            "context": "I'm hungry."]
        
        let message = param.map { $0.key + " = " + $0.value }.joined(separator: "\n")
        let event = Event(level: .debug)
        let exception = Exception(value: message, type: "exception")
        event.exceptions = [exception]
        let frame = Frame()
        frame.fileName = #file
        frame.function = #function
        frame.lineNumber = #line
        let stacktace = Stacktrace(frames: [frame], registers: ["name": "Min"])
        event.stacktrace = stacktace
        Client.shared?.send(event: event)
    }
}

