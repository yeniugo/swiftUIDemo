//
//  ViewController.swift
//  animate
//
//  Created by 胡凯 on 2020/5/24.
//  Copyright © 2020 胡凯. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let testView = arcView()
        testView.frame = view.bounds
        view.addSubview(testView)
    }


}

