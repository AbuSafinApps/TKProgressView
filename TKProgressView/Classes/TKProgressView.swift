//
//  TKProgressView.swift
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

import Foundation
import UIKit

extension UIColor {
	convenience init(_ hex6: UInt32) {
		let divisor = CGFloat(255)
		let red = CGFloat((hex6 & 0xFF0000) >> 16) / divisor
		let green = CGFloat((hex6 & 0x00FF00) >> 8) / divisor
		let blue = CGFloat((hex6 & 0x0000FF) >> 0) / divisor
		self.init(red: red, green: green, blue: blue, alpha: 1.0)
	}
}

class TKProgressView: UIView {
	var colors = [
		UIColor(0xee1c27),UIColor(0xbc0271),UIColor(0x612d92),UIColor(0x283897),
		UIColor(0x016db8),UIColor(0x02a2b8),UIColor(0x00a666),UIColor(0xa7d04e),
		UIColor(0xfef200),UIColor(0xfeaf16),UIColor(0xf58020),UIColor(0xf35724)]
	
	fileprivate var startIndex = 3
	
	var isCircular = true
	var numberOfBalls = 12
	var speed: Double = 0.75
    var isAnimating = false

	fileprivate var timeStep: Int = 0
	fileprivate var radius: CGFloat = 0
	fileprivate var displayLink: CADisplayLink?
	
    required override init(frame: CGRect =  CGRect(x: 0, y: 0, width: 100, height: 100)) {
        super.init(frame: frame)
        
        radius = min(frame.width, frame.height) / 3
    }
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		frame.size.width = 100
		frame.size.height = 100
		
		radius = min(frame.width, frame.height) / 3
	}
	
	func startAnimating() {
		displayLink = UIScreen.main.displayLink(withTarget: self, selector: #selector(TKProgressView.animateBalls))
		displayLink?.add(to: .current, forMode: .defaultRunLoopMode)
        isAnimating = true
	}
	
	func stopAnimating() {
		displayLink?.invalidate()
		timeStep = 0
        isAnimating = false
	}
	
	func clear() {
		layer.sublayers?.removeAll()
	}
	
	func drawBall(_ x: CGFloat, _ y: CGFloat, _ color: UIColor) {
		let dot = CAShapeLayer()
		dot.path = UIBezierPath(ovalIn: CGRect(x: x, y: y, width: 7, height: 7)).cgPath
		dot.fillColor = color.cgColor
		dot.strokeColor = UIColor.clear.cgColor
		dot.lineWidth = 0
		layer.addSublayer(dot)
	}
	
    @objc func animateBalls() {
		clear()
		
		for i in startIndex ..< numberOfBalls + startIndex {
			drawBall(getX(i: i, timeStep: timeStep), getY(i: i, timeStep: timeStep), colors[i-startIndex])
		}
		
		timeStep += 1
	}
	
	func getR(i: Int) -> CGFloat {
		return CGFloat((CGFloat(1+i) / CGFloat(numberOfBalls)) * radius)
	}
	
	func getT(i: Int, timeStep: Int) -> Double {
		return Double(timeStep) * (Double(i) / 100 * speed + 0.005)
	}
	
	func getX(i: Int, timeStep: Int) -> CGFloat {
		return (frame.width / 2) + CGFloat(getR(i: i)) * cos(CGFloat(getT(i: i, timeStep: timeStep)))
	}
	
	func getY(i: Int, timeStep: Int) -> CGFloat {
		if isCircular {
			return (frame.height / 2) + CGFloat(getR(i: i)) * sin(CGFloat(getT(i: i, timeStep: timeStep)))
		} else {
			return frame.height / 2
		}
	}
}
