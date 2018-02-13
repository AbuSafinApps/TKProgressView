//
//  ViewController.swift
//  TKProgressView
//
//  Created by Toseefhusen on 2/13/18.
//  Copyright © 2018 Toseefhusen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tkView: TKProgressView = TKProgressView.init(frame: CGRect.init(x: 50, y: 50, width: 100, height: 100 ))
        self.view.addSubview(tkView)
        tkView.startAnimating()
    }
}

