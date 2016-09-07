//
//  SecondViewController.swift
//  SeguePlay
//
//  Created by TJ Usiyan on 2016/06/09.
//  Copyright © 2016 Buttons and Lights LLC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var name: String? {
        didSet {
            title = name ?? "no name"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
    }
}
