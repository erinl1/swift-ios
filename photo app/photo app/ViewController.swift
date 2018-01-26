//
//  ViewController.swift
//  photo app
//
//  Created by Erin Lee on 1/5/18.
//  Copyright © 2018 Erin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var shutterSpeed: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button: UIButton!
    var num : Int = 4
    var array = ["1.4", "2", "2.8", "4", "5.6", "8", "11", "16", "22"]
    var array2 = ["1/1000", "1/500", "1/250", "1/125", "1/60", "1/30", "1/15", "1/8", "1/4"]
   @IBOutlet weak var photoLabel: UILabel!
    @IBAction func clickButton(_ sender: Any) {
        if num + 1 <= array.count - 1 {
            num = num + 1
        }
        else {
        }
        photoLabel.text = array[num]
        shutterSpeed.text = array2[num - 2 ]
    }
    
    @IBAction func alsoclickButton(_ sender: Any) {
        if num - 1 >= 0 {
            num = num - 1
        }
        else {
        photoLabel.text = array[num]
        shutterSpeed.text = array2[num + 2]
    }

    func viewDidLoad() {
        photoLabel.text = array[num]
        shutterSpeed.text = array2[num]
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

}
