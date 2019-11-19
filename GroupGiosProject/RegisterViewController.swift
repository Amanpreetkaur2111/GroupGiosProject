//
//  RegisterViewController.swift
//  GroupGiosProject
//
//  Created by MacStudent on 2019-11-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController
{

    
    @IBOutlet var FirstNameLabel: UILabel!
    @IBOutlet var PasswordLabel: UILabel!
    @IBOutlet var EmailLabel: UILabel!
    @IBOutlet var PhoneLabel: UILabel!
    
    
    @IBOutlet var segmentCon: UISegmentedControl!
    @IBOutlet var FirstNameTF: UITextField!
    @IBOutlet var PasswordTF: UITextField!
    @IBOutlet var EmailTF: UITextField!
    @IBOutlet var PhoneTF: UITextField!
    
    @IBOutlet var TopLabel: UILabel!
    @IBOutlet var RegisterButton: UIButton!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        segmentCon.isHidden = false
        TopLabel.isHidden = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewtapped))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    
    
    @objc func viewtapped()
    {
        FirstNameTF.resignFirstResponder()
        PasswordTF.resignFirstResponder()
        EmailTF.resignFirstResponder()
        PhoneTF.resignFirstResponder()
    }
    
    
    @IBAction func SegmentControl(_ sender: UISegmentedControl)
    {
        let value = sender.selectedSegmentIndex
        if value == 0
        {
            TopLabel.isHidden = false
            FirstNameLabel.isHidden = false
            FirstNameTF.isHidden = false
            PasswordLabel.isHidden = false
            PasswordTF.isHidden = false
            RegisterButton.isHidden = false
            EmailLabel.isHidden = true
            EmailTF.isHidden = true
            PhoneTF.isHidden = true
            PhoneLabel.isHidden = true
        }
        else
        {
            TopLabel.isHidden = false
            FirstNameLabel.isHidden = false
            FirstNameTF.isHidden = false
            PasswordLabel.isHidden = false
            PasswordTF.isHidden = false
            RegisterButton.isHidden = false
            EmailLabel.isHidden = false
            EmailTF.isHidden = false
            PhoneTF.isHidden = false
            PhoneLabel.isHidden = false
        }
    }
    
    
    /*
     @IBAction func SegmentControl(_ sender: UISegmentedControl) {
     }
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
