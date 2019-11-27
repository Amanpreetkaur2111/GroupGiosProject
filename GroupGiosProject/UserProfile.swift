//
//  UserProfile.swift
//  GroupGiosProject
//
//  Created by MacStudent on 2019-11-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class UserProfile: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    

    @IBOutlet var GreetingLabel: UILabel!
    @IBOutlet var DetailLabel: UITableView!
    @IBOutlet var UserMessageLabel: UILabel!
    @IBOutlet var StayLabel: UIButton!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
     
        GreetingLabel.text = " Hi \(Users.usersData[Users.currentUserIndex].userName)"
        
        // Do any additional setup after loading the view.
        
    }
    
    
    
    override func viewDidAppear(_ animated: Bool)
    {
        DetailLabel.reloadData()
        
        if !Users.usersData[Users.currentUserIndex].bookingDetail.isEmpty{
            UserMessageLabel.isHidden = true
    }
    else{
            UserMessageLabel.isHidden = false
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return Users.usersData[Users.currentUserIndex].bookingDetail.count
       }
       
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if let cell = DetailLabel.dequeueReusableCell(withIdentifier: "Booking"){
        
        
            if let bookingData = cell.contentView.viewWithTag(1) as? UITextView{
                
                
                bookingData.text = Users.usersData[Users.currentUserIndex].bookingDetail[indexPath.row]
                
                
               
                
            }
        
        return cell
            
        }
        return UITableViewCell()
        
       }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let c_action = UIContextualAction(style: .destructive, title: "Cancel Booking") { (action, V, _) in
            Users.usersData[Users.currentUserIndex].bookingDetail.remove(at: indexPath.row)
            self.DetailLabel.reloadData()
        }
        
        return UISwipeActionsConfiguration(actions: [c_action])
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
