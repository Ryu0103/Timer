//
//  TimerViewController.swift
//  Timer
//
//  Created by 岡本　隆誠 on 2015/10/04.
//  Copyright (c) 2015年 岡本　隆誠. All rights reserved.
//


//
//  ViewController.swift
//  Utillity001
//

import UIKit

class TimerViewController: UIViewController {
    @IBOutlet var label: UILabel!
    var count: Float = 5.00
    var timer: NSTimer = NSTimer()
    
    
    
    
    //時間計測用の変数.
    
    
    //時間表示用のラベル
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\(count)"
        
        //タイマーを作る.
        //        NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "up:", userInfo: nil, repeats: true)
    }
    @IBAction func start() {
        if !timer.valid {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01,
                target: self,
                selector: Selector("up:"),
                userInfo: nil,
                repeats: true
            )
        }
        
        
        
    }
    @IBAction func stop(){
        if timer.valid {
            timer.invalidate()
        }
    }
    
    
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    func up(timer : NSTimer){
        
        count = count - 0.01
        label.text = String(format: "%.2f",count)
        if count <= 0 {
            timer.invalidate()
            label.text = "0.00"
            println("abcde")
        }
        
    }
    @IBAction func plus() {
        count = count + 1
        label.text = String(stringInterpolationSegment: count)
        
    }
    
    @IBAction func minus() {
        count = count - 1
        label.text = String(stringInterpolationSegment: count)
        
    }
    @IBAction func back() {
        self.dismissViewControllerAnimated(true,completion: nil)

    }
    
    
    
    
    
    
    
}


