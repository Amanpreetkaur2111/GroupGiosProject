//
//  RoomDetailViewController.swift
//  GroupGiosProject
//
//  Created by MacStudent on 2019-11-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class RoomDetailViewController: UIViewController {

    @IBOutlet var room_Image: UIImageView!
    
    var RoomDelegate: PictureViewController?
    override func viewDidLoad() {
        super.viewDidLoad()

        var i_name =  RoomDelegate!.cuurentImageName
        room_Image.image = UIImage(named: i_name)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
