//
//  Users.swift
//  GroupGiosProject
//
//  Created by MacStudent on 2019-11-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

struct Users
{
    var userName: String
    var Password: String
    var Email: String
    var Phone: String
    
    var CheckIn: [String] = []
    var CheckOut: [String] = []
    
    var bookingDetail: String{
        
        return """
        Guest Name:\(userName)\n
        Check In: \(CheckIn) - Check Out: \(CheckOut)\n
        Contact: \(Phone)\n
        Email: \(Email)
        """
        
    }
    static var usersData = [Users]()
}
  
