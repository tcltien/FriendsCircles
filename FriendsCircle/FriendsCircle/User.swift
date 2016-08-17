//
//  User.swift
//  FriendsCircle
//
//  Created by Vu Nguyen on 8/13/16.
//  Copyright © 2016 Huynh Tri Dung. All rights reserved.
//

import Foundation
import UIKit
import MapKit


class  User: NSObject {
    var UserID: String?
    var phoneNum: String!
    var Avatar: UIImage?
//        {
//        get {
//            return Avatar
//        }
//        set {
//            Avatar = newValue
//        }
//    }
    var firstName: String?
    var lastName: String?
    var currentLocation: CLLocationCoordinate2D?
    
    
    init(phoneNum: String) {
        self.phoneNum = phoneNum
    }
    
    
}