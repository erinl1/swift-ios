//
//  RootViewController.swift
//  sspeed-aperture
//
//  Created by Erin Lee on 1/17/18.
//  Copyright © 2018 Erin Lee. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    var pageViewController: UIPageViewController?
    var num : Int = 4
    var aperture = ["1.4", "2", "2.8", "4", "5.6", "8", "11", "16", "22"]

    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var apertureLabel: UILabel!
    @IBAction func changeSlider1(_ sender: Any) {
        let sliderVal : Int = Int(slider1.value)
        apertureLabel.text = aperture[sliderVal]
        slider1.value = Float(sliderVal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Configure the page view controller and add it as a child view controller.
        slider1.maximumValue = Float(aperture.count)
        slider1.minimumValue = 0
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  }

