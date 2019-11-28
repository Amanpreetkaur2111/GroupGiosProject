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
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        BookNowButton.isHidden = false
//        assignbackground()
    }
    
    

    
    override func viewWillAppear(_ animated: Bool)
    {
        self.navigationController?.setToolbarHidden(true, animated: false)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    override func viewWillDisappear(_ animated: Bool)
    {
        self.navigationController?.setToolbarHidden(false, animated: false)
         self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
}

