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

    var userIndex = -1
    @IBOutlet var UserNameLabel: UILabel!
    @IBOutlet var PasswordLabel: UILabel!
    @IBOutlet var EmailLabel: UILabel!
    @IBOutlet var PhoneLabel: UILabel!
    
    
    @IBOutlet var segmentCon: UISegmentedControl!
    @IBOutlet var UserNameTF: UITextField!
    @IBOutlet var PasswordTF: UITextField!
    @IBOutlet var EmailTF: UITextField!
    @IBOutlet var PhoneTF: UITextField!
    
    
    @IBOutlet var RegisterButton: UIButton!
    @IBOutlet var SignInButton: UIButton!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        segmentCon.isHidden = false
        UserNameLabel.isHidden = false
        UserNameTF.isHidden = false
        PasswordLabel.isHidden = false
        PasswordTF.isHidden = false
        EmailLabel.isHidden = true
        EmailTF.isHidden = true
        PhoneTF.isHidden = true
        PhoneLabel.isHidden = true
        SignInButton.isHidden = false
        RegisterButton.isHidden = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewtapped))
        self.view.addGestureRecognizer(tapGesture)
        
        segmentCon.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UIControl.State.selected)
    }
    
    
    
    @objc func viewtapped()
    {
        UserNameTF.resignFirstResponder()
        PasswordTF.resignFirstResponder()
        EmailTF.resignFirstResponder()
        PhoneTF.resignFirstResponder()
    }
    
    
    
    @IBAction func SegmentControl(_ sender: UISegmentedControl)
    {
        let value = sender.selectedSegmentIndex
        if value == 0
        {
            
            UserNameLabel.isHidden = false
            UserNameTF.isHidden = false
            PasswordLabel.isHidden = false
            PasswordTF.isHidden = false
            RegisterButton.isHidden = false
            EmailLabel.isHidden = true
            EmailTF.isHidden = true
            PhoneTF.isHidden = true
            PhoneLabel.isHidden = true
            SignInButton.isHidden = false
            RegisterButton.isHidden = true
            }
        else
            {
           
            UserNameLabel.isHidden = false
            UserNameTF.isHidden = false
            PasswordLabel.isHidden = false
            PasswordTF.isHidden = false
            RegisterButton.isHidden = false
            EmailLabel.isHidden = false
            EmailTF.isHidden = false
            PhoneTF.isHidden = false
            PhoneLabel.isHidden = false
            SignInButton.isHidden = true
            RegisterButton.isHidden = false
                
           
        }
    }
    
    @IBAction func Register(_ sender: UIButton)
    {
        let username = UserNameTF.text!
        let password = PasswordTF.text!
        let email = EmailTF.text!
        let phone = PhoneTF.text!
        
        
        guard !username.isEmpty && !password.isEmpty && !email.isEmpty && !phone.isEmpty else
        {
            let alert = UIAlertController(title: "Empty Fields", message: "All fields must be filled", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        
        
        
        let user = Users(userName: username, Password: password, Email: email, Phone: phone, CheckIn:"", CheckOut: "", bookingDetail: [String]())
        
        var isExist = false
        for i in Users.usersData
        {
        if username == i.userName
        {
        isExist = true
        }
            
        }
        
        if isExist
        {
            let alert = UIAlertController(title: "UserName already exists", message: "Enter another UserName", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert,animated: true,completion: nil)
            return
        }
        else
        {
            Users.usersData.append(user)
            UserNameTF.text = nil
            PasswordTF.text = nil
            EmailTF.text = nil
            PhoneTF.text = nil
            
        }
        let alert = UIAlertController(title: "Successfully Registered ", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alert,animated: true,completion: nil)
        return

        
       
    }
    
    @IBAction func signIn(_ sender: UIButton)
    {
        
        let username = UserNameTF.text!
        let password = PasswordTF.text!
        var isMatched = false
        
        guard !username.isEmpty && !password.isEmpty else
              {
                  let alert = UIAlertController(title: "Empty Fields", message: "All fields must be filled", preferredStyle: .alert)
                  alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                  self.present(alert, animated: true, completion: nil)
                  return
              }
        
        var isExist = false
        userIndex = -1
        for i in Users.usersData
        {
            userIndex += 1
        if username == i.userName
        {
            isExist = true
            if i.Password == password
              {
                isMatched = true
                Users.currentUserIndex = userIndex
                break
              }
            
        }
        }
        
        
        
        if !isExist
        {
            let alert = UIAlertController(title: "UserName does not exist", message: "SignUp for new account", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert,animated: true,completion: nil)
            return
        }
        
        if isMatched{
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let roomType = storyboard.instantiateViewController(withIdentifier: "profile")
        self.navigationController?.pushViewController(roomType, animated: true)
        }
        else{
            let alert = UIAlertController(title: "Wrong Password", message: "Enter correct password", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert,animated: true,completion: nil)
            return
            
        }
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
    
    
    
    
    
    
     /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if let pro = segue.destination as? UserProfile{
            pro.d_login = self
            
            
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }*/
    

}
