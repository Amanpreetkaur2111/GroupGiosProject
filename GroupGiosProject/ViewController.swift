//
//  ViewController.swift
//  GroupGiosProject
//
//  Created by MacStudent on 2019-11-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var BookNowButton: UIButton!
    
    @IBOutlet var Segment: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        BookNowButton.isHidden = false
        Segment.isHidden = true
        
        assignbackground()
    }
     func assignbackground(){
        let background = UIImage(named: "hotel pic")
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    
    @IBAction func BookNow(_ sender: UIButton) {
        
        BookNowButton.isHidden = false
        Segment.isHidden = false
        
    }
    
    
}

