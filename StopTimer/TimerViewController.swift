//
//  TimerViewController.swift
//  StopTimer
//
//  Created by Kubatov Erzhan on 01.02.2022.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var time = 0
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func start(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.action), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    
    
    @IBAction func reset(_ sender: Any) {
        time = 0
        timerLabel.text = ("0")
    }
    
    @objc func action()
    {
        time += 1
        timerLabel.text = String(time)
    }

    override func didReceiveMemoryWarning(){
    super.didReceiveMemoryWarning()
    
    }

}
