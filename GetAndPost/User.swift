//
//  User.swift
//  GetAndPost
//
//  Created by sycf_ios on 2017/6/23.
//  Copyright © 2017年 shibiao. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct User: JSONDecodable {
    
    let name:String
    let companyName: String
    
    
    init(json: JSON) {
        name = json["name"].stringValue
        companyName = json["company"]["name"].stringValue
    }
}
