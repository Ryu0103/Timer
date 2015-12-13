//
//  ViewController.swift
//  Timer
//
//  Created by 岡本　隆誠 on 2015/06/14.
//  Copyright (c) 2015年 岡本　隆誠. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    var count: Float = 0.0
    var timer: NSTimer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func start() {
        if !timer.valid {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01,
                target: self,
                selector: Selector("up"),
                userInfo: nil,
                repeats: true
            )
        }

    }
    
    func up() {
        count = count + 0.01
        label.text = String(format: "%.2f",count)
    }
    
    @IBAction func stop(){
        if timer.valid {
            timer.invalidate()
        }
    }
    @IBAction func back() {
        self.dismissViewControllerAnimated(true,completion: nil)
        
    }
    
    

       
//    override func didReceiveMemoryWarning() {
//        super.didReceivweMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
}



