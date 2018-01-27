//
//  ViewController.swift
//  gridapp
//
//  Created by Erin Lee on 1/26/18.
//  Copyright © 2018 Erin Lee. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath)
        let imageView = UIImageView(image: UIImage(named: "photo_\(indexPath.row + 1)"))
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        imageView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        cell.backgroundView = imageView
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailedViewController = segue.destination as! DetailedViewController
        detailedViewController.imageName = "photo_\(sender as! Int + 1)"
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detailedViewSegue", sender: indexPath.row)
    }
}

