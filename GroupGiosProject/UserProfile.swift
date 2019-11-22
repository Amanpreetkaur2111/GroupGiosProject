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
        
      
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Users.usersData[Users.currentUserIndex].bookingDetail.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = DetailLabel.dequeueReusableCell(withIdentifier: "Booking"){
        
            if let bookingData = cell.viewWithTag(0) as? UITextView{
                
                bookingData.text = Users.usersData[Users.currentUserIndex].bookingDetail[indexPath.row]
                print("user index value")
                print(Users.currentUserIndex)
                
            }
        
        return cell
            
        }
        return UITableViewCell()
        
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
