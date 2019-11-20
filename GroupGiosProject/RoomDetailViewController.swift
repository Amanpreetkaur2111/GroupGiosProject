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
    
    
    @IBOutlet var CheckIn: UITextField!
    
    @IBOutlet var CheckOut: UITextField!
    
    private var datepicker: UIDatePicker?
    
    var RoomDelegate: PictureViewController?
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        datepicker = UIDatePicker()
        datepicker?.datePickerMode = .date
        
        datepicker?.addTarget(self, action: #selector(RoomDetailViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGester = UITapGestureRecognizer(target: self, action: #selector(RoomDetailViewController.viewTapped(gestureRecognizer:)))
            view.addGestureRecognizer(tapGester)
       CheckIn.inputView = datepicker
        CheckOut.inputView = datepicker


        let i_name =  RoomDelegate!.cuurentImageName
        room_Image.image = UIImage(named: i_name)
        // Do any additional setup after loading the view.
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer)
    {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker)
    {
        let Dateformatter = DateFormatter()
        Dateformatter.dateFormat = "MM/dd/yyyy"
        CheckIn.text = Dateformatter.string(from: datepicker!.date)
        CheckOut.text = Dateformatter.string(from: datepicker!.date)
        view.endEditing(true)
        
    }
//    override func didReceiveMemoryWarning()
//    {
//        super.didReceiveMemoryWarning()
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
