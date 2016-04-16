//
//  ViewController.swift
//  Swipes
//
//  Created by Steve D'Amico on 4/14/16.
//  Copyright © 2016 Steve D'Amico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    private var gestureStartPoint: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let vertical = UISwipeGestureRecognizer(target: self, action: "reportVerticalSwipe:")
        vertical.direction = [.Up, .Down]
        view.addGestureRecognizer(vertical)
        
        let horizontal = UISwipeGestureRecognizer(target: self, action: "reportHorizontalSwipe:")
        horizontal.direction = [.Left, .Right]
        view.addGestureRecognizer(horizontal)
    }

    func reportHorizontalSwipe(reginizer:UIGestureRecognizer) {
        label.text = "Horizontal swipe detected"
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(2 * NSEC_PER_SEC)), dispatch_get_main_queue()) {
            self.label.text = ""
        }
    }
    
    func reportVerticalSwipe(recognizer:UIGestureRecognizer) {
        label.text = "Vertical swipe detected"
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(2 * NSEC_PER_SEC)), dispatch_get_main_queue()) {
            self.label.text = ""
        }
    }
}
