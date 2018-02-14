//
//  ViewController.swift
//  TKProgressView
//
//    MIT License
//
//    Copyright (c) 2018 Toseef Khilji
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.

import UIKit

class ViewController: UIViewController {
    
    var tkView: TKProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tkView = TKProgressView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        self.view.addSubview(tkView)
        tkView.startAnimating()
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        switch sender.title(for: .normal)! {
        case "Start":
            tkView?.startAnimating()
            sender.setTitle("Stop", for: .normal)
        case "Stop":
            tkView?.stopAnimating()
            sender.setTitle("Start", for: .normal)
        default:
            break;
        }
    }
}

