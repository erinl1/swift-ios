//
//  DetailedViewController.swift
//  gridapp
//
//  Created by Erin Lee on 1/26/18.
//  Copyright © 2018 Erin Lee. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var imageName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: imageName)
        imageView.contentMode = UIViewContentMode.scaleAspectFit

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
